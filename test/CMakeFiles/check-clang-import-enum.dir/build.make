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

# Utility rule file for check-clang-import-enum.

# Include the progress variables for this target.
include tools/clang/test/CMakeFiles/check-clang-import-enum.dir/progress.make

tools/clang/test/CMakeFiles/check-clang-import-enum:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Running lit suite /Users/nhacnguyen/workspace/llvm/tools/clang/test/Import/enum"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/test && /usr/local/bin/python2.7 /Users/nhacnguyen/workspace/llvm/utils/lit/lit.py -sv --param clang_site_config=/Users/nhacnguyen/workspace/llvm/Build/tools/clang/test/lit.site.cfg /Users/nhacnguyen/workspace/llvm/tools/clang/test/Import/enum

check-clang-import-enum: tools/clang/test/CMakeFiles/check-clang-import-enum
check-clang-import-enum: tools/clang/test/CMakeFiles/check-clang-import-enum.dir/build.make

.PHONY : check-clang-import-enum

# Rule to build all files generated by this target.
tools/clang/test/CMakeFiles/check-clang-import-enum.dir/build: check-clang-import-enum

.PHONY : tools/clang/test/CMakeFiles/check-clang-import-enum.dir/build

tools/clang/test/CMakeFiles/check-clang-import-enum.dir/clean:
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/test && $(CMAKE_COMMAND) -P CMakeFiles/check-clang-import-enum.dir/cmake_clean.cmake
.PHONY : tools/clang/test/CMakeFiles/check-clang-import-enum.dir/clean

tools/clang/test/CMakeFiles/check-clang-import-enum.dir/depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nhacnguyen/workspace/llvm /Users/nhacnguyen/workspace/llvm/tools/clang/test /Users/nhacnguyen/workspace/llvm/Build /Users/nhacnguyen/workspace/llvm/Build/tools/clang/test /Users/nhacnguyen/workspace/llvm/Build/tools/clang/test/CMakeFiles/check-clang-import-enum.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/test/CMakeFiles/check-clang-import-enum.dir/depend

