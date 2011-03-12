/// \file TeslaInstrumenter and TeslaAction

#include "clang/Frontend/FrontendPluginRegistry.h"
#include "clang/AST/AST.h"
#include "clang/AST/ASTConsumer.h"
#include "clang/Frontend/CompilerInstance.h"
#include "llvm/Support/raw_ostream.h"

#include <set>

#include "Instrumentation.h"

using namespace clang;
using namespace std;

namespace {

/// Instruments assignments to tag fields with TESLA assertions.
class TeslaInstrumenter : public ASTConsumer {
private:
  QualType teslaDataType;
  set<const Type*> toInstrument;

  Diagnostic *diag;
  unsigned int teslaWarningId;

  vector<string> functionsToInstrument;

  bool needToInstrument(const Type* t) const {
    return (toInstrument.find(t) != toInstrument.end());
  }

  bool needToInstrument(const QualType t) const {
    return needToInstrument(t.getTypePtr());
  }

  bool needToInstrument(const FunctionDecl *f) const {
    if (f == NULL) return false;
    return (find(functionsToInstrument.begin(), functionsToInstrument.end(),
        f->getName()) != functionsToInstrument.end());
  }

  DiagnosticBuilder warnAddingInstrumentation(SourceLocation) const;


public:
  void Visit(DeclContext *dc, ASTContext &ast);
  void Visit(Decl *d, DeclContext *context, ASTContext &ast);
  void Visit(CompoundStmt *cs, FunctionDecl *f, DeclContext* context,
      ASTContext &ast);
  void Visit(Stmt *s, FunctionDecl *f, CompoundStmt *cs, DeclContext* context,
      ASTContext &ast);
  void Visit(ReturnStmt *r, CompoundStmt *cs, FunctionDecl *f, DeclContext *dc,
      ASTContext& ast);
  void Visit(Expr *e, FunctionDecl *f, Stmt *s, CompoundStmt *c,
      DeclContext* dc, ASTContext &ast);
  void Visit(
      BinaryOperator *o, Stmt *s, CompoundStmt *cs, ASTContext &ast);

  /// Adds a 'struct tesla_data' declaration to a CompoundStmt.
  void addTeslaDeclaration(
      CompoundStmt *c, DeclContext *dc, ASTContext &ast);


  // ASTConsumer implementation.

  virtual void Initialize(ASTContext& ast);

  /// Make note if a tag has been tagged with __tesla or the like.
  virtual void HandleTagDeclDefinition(TagDecl *tag);

  /// Recurse down through a declaration of a variable, function, etc.
  virtual void HandleTopLevelDecl(DeclGroupRef d);
};


class TeslaAction : public PluginASTAction {
protected:
  ASTConsumer *CreateASTConsumer(CompilerInstance &CI, llvm::StringRef) {
    return new TeslaInstrumenter();
  }

  bool ParseArgs(const CompilerInstance &CI, const vector<string>& args) {
    return true;
  }

  void PrintHelp(llvm::raw_ostream& ros) {
    ros << "Help for TeslaInstrumenter plugin goes here\n";
  }
};

static FrontendPluginRegistry::Add<TeslaAction>
X("tesla", "Add TESLA instrumentation");



// ********* TeslaInstrumenter (still in the anonymous namespace). ********

void TeslaInstrumenter::Initialize(ASTContext& ast) {
  diag = &ast.getDiagnostics();
  teslaWarningId = diag->getCustomDiagID(
      Diagnostic::Warning, "Adding TESLA instrumentation");

  // TODO: un-kludge this once we have specifications to read.
  functionsToInstrument.push_back("audit_submit");
  functionsToInstrument.push_back("check_auth");
  functionsToInstrument.push_back("foo");
  functionsToInstrument.push_back("helper");
  functionsToInstrument.push_back("syscall");
}

void TeslaInstrumenter::HandleTopLevelDecl(DeclGroupRef d) {
  for (DeclGroupRef::iterator i = d.begin(); i != d.end(); i++) {
    DeclContext *dc = dyn_cast<DeclContext>(*i);
    Visit(*i, dc, (*i)->getASTContext());
  }
}

void TeslaInstrumenter::HandleTagDeclDefinition(TagDecl *tag) {
  if (tag->getAttr<TeslaAttr>()) {
    toInstrument.insert(tag->getTypeForDecl());
  }

  else if (tag->getName() == "__tesla_data")
    teslaDataType = tag->getTypeForDecl()->getCanonicalTypeInternal();
}



void TeslaInstrumenter::Visit(DeclContext *dc, ASTContext &ast) {
  typedef DeclContext::decl_iterator Iterator;
  for (Iterator i = dc->decls_begin(); i != dc->decls_end(); i++) {
    Visit(*i, dc, ast);
  }
}


void TeslaInstrumenter::Visit(Decl *d, DeclContext *context, ASTContext &ast) {
  // We're not interested in function declarations, only definitions.
  FunctionDecl *f = dyn_cast<FunctionDecl>(d);
  if ((f != NULL) and !f->isThisDeclarationADefinition()) return;

  if (DeclContext *dc = dyn_cast<DeclContext>(d)) {
    Visit(dc, ast);
    context = dc;
  }

  if (d->hasBody()) {
    assert(isa<CompoundStmt>(d->getBody()));
    CompoundStmt *cs = dyn_cast<CompoundStmt>(d->getBody());

    Visit(cs, f, context, ast);

    if (needToInstrument(f)) {
      SourceRange fRange = f->getSourceRange();
      warnAddingInstrumentation(fRange.getBegin()) << fRange;

      // Always instrument the prologue.
      FunctionEntry(f, teslaDataType).insert(cs, ast);

      // Only instrument the epilogue of void functions. If return statements
      // keep us from getting here, this will be dead code, but it will be
      // pruned in CG (including IR generation).
      if (f->getResultType() == ast.VoidTy)
        FunctionReturn(f, NULL).append(cs, ast);
    }
  }
}

void TeslaInstrumenter::Visit(
    CompoundStmt *cs, FunctionDecl *f, DeclContext* dc, ASTContext &ast) {

  assert(cs != NULL);

  for (StmtRange child = cs->children(); child; child++) {
    // It's perfectly legitimate to have a null child (think an IfStmt with
    // no 'else' clause), but dyn_cast() will choke on it.
    if (*child == NULL) continue;

    if (Expr *e = dyn_cast<Expr>(*child)) Visit(e, f, e, cs, dc, ast);
    else Visit(*child, f, cs, dc, ast);
  }
}

void TeslaInstrumenter::Visit(
    Stmt *s, FunctionDecl *f, CompoundStmt *cs, DeclContext* dc,
    ASTContext &ast) {

  assert(s != NULL);

  if (CompoundStmt *c = dyn_cast<CompoundStmt>(s)) Visit(c, f, dc, ast);
  else if (ReturnStmt *r = dyn_cast<ReturnStmt>(s)) Visit(r, cs, f, dc, ast);
  else
    for (StmtRange child = s->children(); child; child++) {
      // It's perfectly legitimate to have a null child (think an IfStmt with
      // no 'else' clause), but dyn_cast() will choke on it.
      if (*child == NULL) continue;

      if (Expr *e = dyn_cast<Expr>(*child)) Visit(e, f, s, cs, dc, ast);
      else Visit(*child, f, cs, dc, ast);
    }
}

void TeslaInstrumenter::Visit(ReturnStmt *r, CompoundStmt *cs, FunctionDecl *f,
    DeclContext *dc, ASTContext& ast) {

  if (needToInstrument(f)) {
    warnAddingInstrumentation(r->getLocStart()) << r->getSourceRange();
    FunctionReturn(f, r->getRetValue()).insert(cs, r, ast);
  }
}

void TeslaInstrumenter::Visit(Expr *e, FunctionDecl *f, Stmt *s,
    CompoundStmt *cs, DeclContext* dc, ASTContext &ast) {

  assert(e != NULL);

  if (BinaryOperator *o = dyn_cast<BinaryOperator>(e))
    Visit(o, s, cs, ast);

  for (StmtRange child = e->children(); child; child++) {
    assert(isa<Expr>(*child) && "Non-Expr child of Expr");
    Visit(dyn_cast<Expr>(*child), f, s, cs, dc, ast);
  }
}

void TeslaInstrumenter::Visit(
    BinaryOperator *o, Stmt *s, CompoundStmt *cs, ASTContext &ast) {

  if (!o->isAssignmentOp()) return;

  // We only care about assignments to structure fields.
  MemberExpr *lhs = dyn_cast<MemberExpr>(o->getLHS());
  if (lhs == NULL) return;

  // Do we want to instrument this type?
  QualType baseType = lhs->getBase()->getType();
  if (baseType->isPointerType()) baseType = baseType->getPointeeType();
  if (!needToInstrument(baseType)) return;

  Expr *rhs = o->getRHS();
  switch (o->getOpcode()) {
    case BO_Assign:
    case BO_MulAssign:
    case BO_DivAssign:
    case BO_RemAssign:
    case BO_AddAssign:
    case BO_SubAssign:
    case BO_ShlAssign:
    case BO_ShrAssign:
    case BO_AndAssign:
    case BO_XorAssign:
    case BO_OrAssign:
      break;

    default:
      assert(false && "isBinaryInstruction() => non-assign opcode");
  }

  FieldAssignment hook(lhs, rhs);
  warnAddingInstrumentation(o->getLocStart()) << o->getSourceRange();
  hook.insert(cs, s, ast);
}


void TeslaInstrumenter::addTeslaDeclaration(
    CompoundStmt *c, DeclContext *dc, ASTContext &ast) {

  VarDecl *teslaDecl = VarDecl::Create(
      ast, dc, c->getLocStart(), &ast.Idents.get("tesla_data"),
      teslaDataType, ast.CreateTypeSourceInfo(teslaDataType),
      SC_None, SC_None
  );

  dc->addDecl(teslaDecl);

  DeclStmt *stmt = new (ast) DeclStmt(
    DeclGroupRef(teslaDecl), c->getLocStart(), c->getLocEnd());

  vector<Stmt*> newChildren(1, stmt);
  for (StmtRange s = c->children(); s; s++) newChildren.push_back(*s);

  c->setStmts(ast, &newChildren[0], newChildren.size());
}


DiagnosticBuilder
TeslaInstrumenter::warnAddingInstrumentation(SourceLocation loc) const {
  return diag->Report(loc, teslaWarningId);
}

}
