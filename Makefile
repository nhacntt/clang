# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.2/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.2/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nhacnguyen/workspace/llvm

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nhacnguyen/workspace/llvm/Build

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target install/local
install/local: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local

# Special rule for the target install/local
install/local/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing only the local directory..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -DCMAKE_INSTALL_LOCAL_ONLY=1 -P cmake_install.cmake
.PHONY : install/local/fast

# Special rule for the target install/strip
install/strip: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip

# Special rule for the target install/strip
install/strip/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Installing the project stripped..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -DCMAKE_INSTALL_DO_STRIP=1 -P cmake_install.cmake
.PHONY : install/strip/fast

# Special rule for the target install
install: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -P cmake_install.cmake
.PHONY : install

# Special rule for the target install
install/fast: preinstall/fast
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Install the project..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -P cmake_install.cmake
.PHONY : install/fast

# Special rule for the target package_source
package_source:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool for source..."
	cd /Users/nhacnguyen/workspace/llvm/Build && /usr/local/Cellar/cmake/3.8.2/bin/cpack --config ./CPackSourceConfig.cmake /Users/nhacnguyen/workspace/llvm/Build/CPackSourceConfig.cmake
.PHONY : package_source

# Special rule for the target package_source
package_source/fast: package_source

.PHONY : package_source/fast

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/local/Cellar/cmake/3.8.2/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake cache editor..."
	/usr/local/Cellar/cmake/3.8.2/bin/ccmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# Special rule for the target list_install_components
list_install_components:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Available install components are: \"LLVMAArch64AsmParser\" \"LLVMAArch64AsmPrinter\" \"LLVMAArch64CodeGen\" \"LLVMAArch64Desc\" \"LLVMAArch64Disassembler\" \"LLVMAArch64Info\" \"LLVMAArch64Utils\" \"LLVMAMDGPUAsmParser\" \"LLVMAMDGPUAsmPrinter\" \"LLVMAMDGPUCodeGen\" \"LLVMAMDGPUDesc\" \"LLVMAMDGPUDisassembler\" \"LLVMAMDGPUInfo\" \"LLVMAMDGPUUtils\" \"LLVMARMAsmParser\" \"LLVMARMAsmPrinter\" \"LLVMARMCodeGen\" \"LLVMARMDesc\" \"LLVMARMDisassembler\" \"LLVMARMInfo\" \"LLVMAnalysis\" \"LLVMAsmParser\" \"LLVMAsmPrinter\" \"LLVMBPFAsmPrinter\" \"LLVMBPFCodeGen\" \"LLVMBPFDesc\" \"LLVMBPFDisassembler\" \"LLVMBPFInfo\" \"LLVMBinaryFormat\" \"LLVMBitReader\" \"LLVMBitWriter\" \"LLVMCodeGen\" \"LLVMCore\" \"LLVMCoroutines\" \"LLVMCoverage\" \"LLVMDebugInfoCodeView\" \"LLVMDebugInfoDWARF\" \"LLVMDebugInfoMSF\" \"LLVMDebugInfoPDB\" \"LLVMDemangle\" \"LLVMDlltoolDriver\" \"LLVMExecutionEngine\" \"LLVMGlobalISel\" \"LLVMHexagonAsmParser\" \"LLVMHexagonCodeGen\" \"LLVMHexagonDesc\" \"LLVMHexagonDisassembler\" \"LLVMHexagonInfo\" \"LLVMIRReader\" \"LLVMInstCombine\" \"LLVMInstrumentation\" \"LLVMInterpreter\" \"LLVMLTO\" \"LLVMLanaiAsmParser\" \"LLVMLanaiAsmPrinter\" \"LLVMLanaiCodeGen\" \"LLVMLanaiDesc\" \"LLVMLanaiDisassembler\" \"LLVMLanaiInfo\" \"LLVMLibDriver\" \"LLVMLineEditor\" \"LLVMLinker\" \"LLVMMC\" \"LLVMMCDisassembler\" \"LLVMMCJIT\" \"LLVMMCParser\" \"LLVMMIRParser\" \"LLVMMSP430AsmPrinter\" \"LLVMMSP430CodeGen\" \"LLVMMSP430Desc\" \"LLVMMSP430Info\" \"LLVMMipsAsmParser\" \"LLVMMipsAsmPrinter\" \"LLVMMipsCodeGen\" \"LLVMMipsDesc\" \"LLVMMipsDisassembler\" \"LLVMMipsInfo\" \"LLVMNVPTXAsmPrinter\" \"LLVMNVPTXCodeGen\" \"LLVMNVPTXDesc\" \"LLVMNVPTXInfo\" \"LLVMObjCARCOpts\" \"LLVMObject\" \"LLVMObjectYAML\" \"LLVMOption\" \"LLVMOrcJIT\" \"LLVMPasses\" \"LLVMPowerPCAsmParser\" \"LLVMPowerPCAsmPrinter\" \"LLVMPowerPCCodeGen\" \"LLVMPowerPCDesc\" \"LLVMPowerPCDisassembler\" \"LLVMPowerPCInfo\" \"LLVMProfileData\" \"LLVMRISCVCodeGen\" \"LLVMRISCVDesc\" \"LLVMRISCVInfo\" \"LLVMRuntimeDyld\" \"LLVMScalarOpts\" \"LLVMSelectionDAG\" \"LLVMSparcAsmParser\" \"LLVMSparcAsmPrinter\" \"LLVMSparcCodeGen\" \"LLVMSparcDesc\" \"LLVMSparcDisassembler\" \"LLVMSparcInfo\" \"LLVMSupport\" \"LLVMSymbolize\" \"LLVMSystemZAsmParser\" \"LLVMSystemZAsmPrinter\" \"LLVMSystemZCodeGen\" \"LLVMSystemZDesc\" \"LLVMSystemZDisassembler\" \"LLVMSystemZInfo\" \"LLVMTableGen\" \"LLVMTarget\" \"LLVMTransformUtils\" \"LLVMVectorize\" \"LLVMX86AsmParser\" \"LLVMX86AsmPrinter\" \"LLVMX86CodeGen\" \"LLVMX86Desc\" \"LLVMX86Disassembler\" \"LLVMX86Info\" \"LLVMX86Utils\" \"LLVMXCoreAsmPrinter\" \"LLVMXCoreCodeGen\" \"LLVMXCoreDesc\" \"LLVMXCoreDisassembler\" \"LLVMXCoreInfo\" \"LLVMXRay\" \"LLVMipo\" \"LTO\" \"Unspecified\" \"bugpoint\" \"c-index-test\" \"clang\" \"clang-format\" \"clang-headers\" \"clang-import-test\" \"clang-rename\" \"clangARCMigrate\" \"clangAST\" \"clangASTMatchers\" \"clangAnalysis\" \"clangBasic\" \"clangCodeGen\" \"clangDriver\" \"clangDynamicASTMatchers\" \"clangEdit\" \"clangFormat\" \"clangFrontend\" \"clangFrontendTool\" \"clangIndex\" \"clangLex\" \"clangParse\" \"clangRewrite\" \"clangRewriteFrontend\" \"clangSema\" \"clangSerialization\" \"clangStaticAnalyzerCheckers\" \"clangStaticAnalyzerCore\" \"clangStaticAnalyzerFrontend\" \"clangTooling\" \"clangToolingCore\" \"clangToolingRefactor\" \"cmake-exports\" \"libclang\" \"libclang-headers\" \"llc\" \"lli\" \"llvm-ar\" \"llvm-as\" \"llvm-bcanalyzer\" \"llvm-c-test\" \"llvm-cat\" \"llvm-config\" \"llvm-cov\" \"llvm-cvtres\" \"llvm-cxxdump\" \"llvm-cxxfilt\" \"llvm-diff\" \"llvm-dis\" \"llvm-dlltool\" \"llvm-dsymutil\" \"llvm-dwarfdump\" \"llvm-dwp\" \"llvm-extract\" \"llvm-headers\" \"llvm-lib\" \"llvm-link\" \"llvm-lto\" \"llvm-lto2\" \"llvm-mc\" \"llvm-mcmarkup\" \"llvm-modextract\" \"llvm-mt\" \"llvm-nm\" \"llvm-objdump\" \"llvm-opt-report\" \"llvm-pdbutil\" \"llvm-profdata\" \"llvm-ranlib\" \"llvm-readelf\" \"llvm-readobj\" \"llvm-rtdyld\" \"llvm-size\" \"llvm-split\" \"llvm-stress\" \"llvm-strings\" \"llvm-symbolizer\" \"llvm-xray\" \"obj2yaml\" \"opt\" \"opt-viewer\" \"sancov\" \"sanstats\" \"verify-uselistorder\" \"yaml2obj\""
.PHONY : list_install_components

# Special rule for the target list_install_components
list_install_components/fast: list_install_components

.PHONY : list_install_components/fast

# Special rule for the target package
package: preinstall
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Run CPack packaging tool..."
	cd /Users/nhacnguyen/workspace/llvm/Build && /usr/local/Cellar/cmake/3.8.2/bin/cpack --config ./CPackConfig.cmake
.PHONY : package

# Special rule for the target package
package/fast: package

.PHONY : package/fast

# The main all target
all: cmake_check_build_system
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_progress_start /Users/nhacnguyen/workspace/llvm/Build/CMakeFiles /Users/nhacnguyen/workspace/llvm/Build/tools/clang/CMakeFiles/progress.marks
	cd /Users/nhacnguyen/workspace/llvm/Build && $(MAKE) -f CMakeFiles/Makefile2 tools/clang/all
	$(CMAKE_COMMAND) -E cmake_progress_start /Users/nhacnguyen/workspace/llvm/Build/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(MAKE) -f CMakeFiles/Makefile2 tools/clang/clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	cd /Users/nhacnguyen/workspace/llvm/Build && $(MAKE) -f CMakeFiles/Makefile2 tools/clang/preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(MAKE) -f CMakeFiles/Makefile2 tools/clang/preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... install/local"
	@echo "... install/strip"
	@echo "... install"
	@echo "... package_source"
	@echo "... rebuild_cache"
	@echo "... edit_cache"
	@echo "... list_install_components"
	@echo "... package"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

