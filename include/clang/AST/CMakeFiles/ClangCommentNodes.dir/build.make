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

# Utility rule file for ClangCommentNodes.

# Include the progress variables for this target.
include tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/progress.make

tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes: tools/clang/include/clang/AST/CommentNodes.inc


tools/clang/include/clang/AST/CommentNodes.inc: tools/clang/include/clang/AST/CommentNodes.inc.tmp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Updating CommentNodes.inc..."
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST && /usr/local/Cellar/cmake/3.8.2/bin/cmake -E copy_if_different /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST/CommentNodes.inc.tmp /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST/CommentNodes.inc

tools/clang/include/clang/AST/CommentNodes.inc.tmp: bin/clang-tblgen
tools/clang/include/clang/AST/CommentNodes.inc.tmp: bin/clang-tblgen
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../tools/clang/include/clang/AST/CommentCommands.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../tools/clang/include/clang/AST/CommentHTMLNamedCharacterReferences.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../tools/clang/include/clang/AST/CommentHTMLTags.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/CodeGen/ValueTypes.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/Attributes.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/Intrinsics.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsAArch64.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsAMDGPU.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsARM.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsBPF.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsHexagon.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsMips.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsNVVM.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsPowerPC.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsSystemZ.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsWebAssembly.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsX86.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/IR/IntrinsicsXCore.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Option/OptParser.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/TableGen/SearchableTable.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/GenericOpcodes.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/GlobalISel/RegisterBank.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/GlobalISel/SelectionDAGCompat.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/GlobalISel/Target.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/Target.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/TargetCallingConv.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/TargetItinerary.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/TargetSchedule.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../include/llvm/Target/TargetSelectionDAG.td
tools/clang/include/clang/AST/CommentNodes.inc.tmp: ../tools/clang/include/clang/Basic/CommentNodes.td
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CommentNodes.inc..."
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST && ../../../../../bin/clang-tblgen -gen-clang-comment-nodes -I /Users/nhacnguyen/workspace/llvm/tools/clang/include/clang/AST -I /Users/nhacnguyen/workspace/llvm/include /Users/nhacnguyen/workspace/llvm/tools/clang/include/clang/AST/../Basic/CommentNodes.td -o /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST/CommentNodes.inc.tmp

ClangCommentNodes: tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes
ClangCommentNodes: tools/clang/include/clang/AST/CommentNodes.inc
ClangCommentNodes: tools/clang/include/clang/AST/CommentNodes.inc.tmp
ClangCommentNodes: tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/build.make

.PHONY : ClangCommentNodes

# Rule to build all files generated by this target.
tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/build: ClangCommentNodes

.PHONY : tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/build

tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/clean:
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST && $(CMAKE_COMMAND) -P CMakeFiles/ClangCommentNodes.dir/cmake_clean.cmake
.PHONY : tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/clean

tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nhacnguyen/workspace/llvm /Users/nhacnguyen/workspace/llvm/tools/clang/include/clang/AST /Users/nhacnguyen/workspace/llvm/Build /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST /Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/include/clang/AST/CMakeFiles/ClangCommentNodes.dir/depend

