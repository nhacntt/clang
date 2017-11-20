set( LLVM_LINK_COMPONENTS support Analysis)

add_clang_executable(clang-declaration-tool
  FunctionDeclarationHelper.cpp
  ClangDeclarationTool.cpp
  )

target_link_libraries(clang-declaration-tool
  clangAST
  clangBasic
  clangDriver
  clangFrontend
  clangTooling
  LLVMAnalysis
  )

install(TARGETS clang-declaration-tool
  RUNTIME DESTINATION bin)
