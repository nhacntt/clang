# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# Include any dependencies generated for this target.
include tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/depend.make

# Include the progress variables for this target.
include tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/flags.make

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/flags.make
tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o: ../tools/clang/tools/clang-import-test/clang-import-test.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o -c /Users/nhacnguyen/workspace/llvm/tools/clang/tools/clang-import-test/clang-import-test.cpp

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clang-import-test.dir/clang-import-test.cpp.i"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nhacnguyen/workspace/llvm/tools/clang/tools/clang-import-test/clang-import-test.cpp > CMakeFiles/clang-import-test.dir/clang-import-test.cpp.i

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clang-import-test.dir/clang-import-test.cpp.s"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nhacnguyen/workspace/llvm/tools/clang/tools/clang-import-test/clang-import-test.cpp -o CMakeFiles/clang-import-test.dir/clang-import-test.cpp.s

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.requires:

.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.requires

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.provides: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.requires
	$(MAKE) -f tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/build.make tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.provides.build
.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.provides

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.provides.build: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o


# Object files for target clang-import-test
clang__import__test_OBJECTS = \
"CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o"

# External object files for target clang-import-test
clang__import__test_EXTERNAL_OBJECTS =

bin/clang-import-test: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o
bin/clang-import-test: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/build.make
bin/clang-import-test: lib/libLLVMCore.a
bin/clang-import-test: lib/libLLVMSupport.a
bin/clang-import-test: lib/libclangAST.a
bin/clang-import-test: lib/libclangBasic.a
bin/clang-import-test: lib/libclangCodeGen.a
bin/clang-import-test: lib/libclangFrontend.a
bin/clang-import-test: lib/libclangLex.a
bin/clang-import-test: lib/libclangParse.a
bin/clang-import-test: lib/libclangDriver.a
bin/clang-import-test: lib/libclangSerialization.a
bin/clang-import-test: lib/libclangSema.a
bin/clang-import-test: lib/libclangEdit.a
bin/clang-import-test: lib/libLLVMOption.a
bin/clang-import-test: lib/libclangAnalysis.a
bin/clang-import-test: lib/libclangAST.a
bin/clang-import-test: lib/libclangLex.a
bin/clang-import-test: lib/libclangBasic.a
bin/clang-import-test: lib/libLLVMCoroutines.a
bin/clang-import-test: lib/libLLVMCoverage.a
bin/clang-import-test: lib/libLLVMLTO.a
bin/clang-import-test: lib/libLLVMObjCARCOpts.a
bin/clang-import-test: lib/libLLVMPasses.a
bin/clang-import-test: lib/libLLVMipo.a
bin/clang-import-test: lib/libLLVMIRReader.a
bin/clang-import-test: lib/libLLVMAsmParser.a
bin/clang-import-test: lib/libLLVMLinker.a
bin/clang-import-test: lib/libLLVMInstrumentation.a
bin/clang-import-test: lib/libLLVMVectorize.a
bin/clang-import-test: lib/libLLVMCodeGen.a
bin/clang-import-test: lib/libLLVMBitWriter.a
bin/clang-import-test: lib/libLLVMScalarOpts.a
bin/clang-import-test: lib/libLLVMInstCombine.a
bin/clang-import-test: lib/libLLVMTarget.a
bin/clang-import-test: lib/libLLVMTransformUtils.a
bin/clang-import-test: lib/libLLVMAnalysis.a
bin/clang-import-test: lib/libLLVMObject.a
bin/clang-import-test: lib/libLLVMBitReader.a
bin/clang-import-test: lib/libLLVMMCParser.a
bin/clang-import-test: lib/libLLVMMC.a
bin/clang-import-test: lib/libLLVMProfileData.a
bin/clang-import-test: lib/libLLVMCore.a
bin/clang-import-test: lib/libLLVMBinaryFormat.a
bin/clang-import-test: lib/libLLVMSupport.a
bin/clang-import-test: lib/libLLVMDemangle.a
bin/clang-import-test: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable ../../../../bin/clang-import-test"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clang-import-test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/build: bin/clang-import-test

.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/build

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/requires: tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clang-import-test.cpp.o.requires

.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/requires

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clean:
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test && $(CMAKE_COMMAND) -P CMakeFiles/clang-import-test.dir/cmake_clean.cmake
.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/clean

tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nhacnguyen/workspace/llvm /Users/nhacnguyen/workspace/llvm/tools/clang/tools/clang-import-test /Users/nhacnguyen/workspace/llvm/Build /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test /Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/tools/clang-import-test/CMakeFiles/clang-import-test.dir/depend

