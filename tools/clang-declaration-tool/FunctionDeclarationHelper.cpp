#include "FunctionDeclarationHelper.h"

using namespace std;
using namespace llvm;
using namespace clang;

//getLocation
Location getLocation(const Decl *D,const SourceManager &SourceMgr){
	FullSourceLoc fullLoc(D->getLocation(), SourceMgr);
	string SourceFile = SourceMgr.getFilename(fullLoc);
	unsigned LineNum = fullLoc.getSpellingLineNumber();
	unsigned ColNum = fullLoc.getSpellingColumnNumber();

	return Location(SourceFile, LineNum, ColNum);
}

//getAnnotations	
SmallVector<string,4> getAnnotations(const Decl* D){

	SmallVector<string,4> Annotations;

	if (D->hasAttr<AnnotateAttr>()){
		for (const auto& Attr:D->attrs()){
			if (const auto& AnnoAttr = dyn_cast<AnnotateAttr>(Attr)){
				Annotations.push_back(AnnoAttr->getAnnotation());
			}
		}
	}

	return Annotations;
}

//getParamDecl
ParamDecl getParamDecl(const ParmVarDecl *P,const SourceManager& SourceMgr){

	Location Loc=getLocation(P,SourceMgr);
	string Name=P->getName();
	Declaration D(Loc,Name,getAnnotations(P));
	string Type=P->getType().getAsString();

	return ParamDecl(D,Type);
}

//getFuncDecl
FuncDecl getFuncDecl(const FunctionDecl *F, const SourceManager &SourceMgr, MangleContext *MContext){

	Location Loc = getLocation(F,SourceMgr);
	string Name = F->getName();
	Declaration D(Loc,Name,getAnnotations(F));
	//get mangled name
	string MangledName=Name;
  	if (!MContext->shouldMangleDeclName(F)) {
    	MangledName = Name;
  	} else {
		llvm::raw_string_ostream ostream(MangledName);
  		MContext->mangleName(F, ostream);
		ostream.flush();
	}

	string RType = F->getReturnType().getAsString();

	vector<ParamDecl> ParamVec;
	ArrayRef<ParmVarDecl*> Params = F->parameters();
	for (auto P:Params){ 
		ParamVec.push_back(getParamDecl(P, SourceMgr));
	}


	return FuncDecl(D, MangledName, RType, ParamVec);
}


