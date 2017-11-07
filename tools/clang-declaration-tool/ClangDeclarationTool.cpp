#include "FunctionDeclarationHelper.h"

#include <clang/AST/AST.h>
#include <clang/AST/ASTConsumer.h>
#include <clang/AST/ASTContext.h>
#include <clang/AST/RecursiveASTVisitor.h>
#include <clang/AST/Mangle.h>

//#include "clang/Driver/Options.h"
//#include "clang/Frontend/ASTConsumers.h"

#include "clang/Frontend/CompilerInstance.h"
#include <clang/Frontend/FrontendActions.h>
//#include "clang/Rewrite/Core/Rewriter.h"
#include <clang/Tooling/CommonOptionsParser.h>
#include <clang/Tooling/Tooling.h>
//#include <llvm/Support/YAMLTraits.h>


using namespace llvm;
using namespace clang;  
using namespace clang::tooling;



/*
Command line options
*/
static cl::OptionCategory MyToolCategory("clang-annos options");
static cl::extrahelp CommonHelp(CommonOptionsParser::HelpMessage);
static cl::opt<string> InputFilename(cl::Positional, cl::desc("<input file>"), cl::init("-"));
static cl::opt<std::string> OutputFilename("o", cl::desc("Specify output filename"), cl::value_desc("filename"),cl::Optional);
static cl::opt<bool> AnnosOnly("a", cl::desc("Only parsing function declarations having annotations"));

//FuncDeclList FL;

/*
FindFuncDeclVisitor
*/

class FindFuncDeclVisitor : public RecursiveASTVisitor<FindFuncDeclVisitor> {  
	public:
		explicit FindFuncDeclVisitor(ASTContext *Context, FuncDeclList* FL/*,bool AnnosOnly*/):
															FL(FL),
															MContext(Context->createMangleContext()),
															SourceMgr(Context->getSourceManager()){}

    	virtual bool VisitFunctionDecl(FunctionDecl *F) {
		  FuncDecl FD=getFuncDecl(F,SourceMgr,MContext);
			//if (!isa<CXXMethodDecl>(f)) { //Find the functions which are not class member
			if (!AnnosOnly || FD.hasAnnotation)
				//FL->List.insert(std::map<string, FuncDecl>::value_type(FD.MangledName, FD));
				FL->List.push_back(FD);
			return true;

		}
		virtual ~FindFuncDeclVisitor(){}

		void toYAML(raw_ostream& OS){
			FL->toYAML(OS);
		}

	private:
		FuncDeclList* FL;
		MangleContext *MContext;
		SourceManager &SourceMgr;
};

/*
FindFuncDeclConsumer
*/

class FindFuncDeclConsumer : public clang::ASTConsumer {  
	public:
		explicit FindFuncDeclConsumer(ASTContext *Context, FuncDeclList* FL) : Visitor(Context, FL) {}

		virtual void HandleTranslationUnit(ASTContext& Context) {			
			Visitor.TraverseDecl(Context.getTranslationUnitDecl());
			raw_ostream *out = &outs();
    		if (OutputFilename != "") {
      			std::error_code EC;
      			out = new raw_fd_ostream(OutputFilename, EC, sys::fs::F_None);
    		}
  		

			Visitor.toYAML(*out);


			if (out != &outs()) delete out;
		}

	private:
		FindFuncDeclVisitor Visitor;
};

/*
FindFuncDeclCallAction
*/
class FindFuncDeclCallAction : public clang::ASTFrontendAction {  
	public:
		FindFuncDeclCallAction(){FL=new FuncDeclList();}
		
		virtual std::unique_ptr<ASTConsumer> CreateASTConsumer(CompilerInstance &Compiler, llvm::StringRef InFile) {
			return std::unique_ptr<ASTConsumer>(new FindFuncDeclConsumer(&Compiler.getASTContext(), FL));
		}
	private:
		FuncDeclList* FL;

};

//}// namespace

/*
main
*/

int main(int argc, const char **argv) {

	//FuncDeclList* FL;

	CommonOptionsParser OptionsParser(argc, argv, MyToolCategory);		

	ClangTool Tool(OptionsParser.getCompilations(), OptionsParser.getSourcePathList());
	std::unique_ptr<FrontendActionFactory> FrontendFactory = newFrontendActionFactory<FindFuncDeclCallAction>();
	int result = Tool.run(FrontendFactory.get());

	if (OutputFilename != "") {
		auto F=FuncDeclList::fromYAML(OutputFilename);
		if (std::error_code ec = F.getError()) {
			errs()<<ec.message();
			return ec.value();
		}
		FuncDeclList FL=F.get();
		FL.toYAML(outs());
    }

	return result;
}
