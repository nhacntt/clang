#include <llvm/Analysis/DeclarationAnalysis.h>

#include "clang/AST/AST.h"
#include "clang/AST/ASTContext.h"
#include "clang/AST/Mangle.h"

#include <string>
#include <vector>
#include <map>

using namespace std;
using namespace llvm;
using namespace clang;

Location getLocation(const Decl *D,const SourceManager &SourceMgr);
SmallVector<string,4> getAnnotations(const Decl* D);
ParamDecl getParamDecl(const ParmVarDecl *P,const SourceManager& SourceMgr);
FuncDecl getFuncDecl(const FunctionDecl *F, const SourceManager &SourceMgr, MangleContext *MContext);

