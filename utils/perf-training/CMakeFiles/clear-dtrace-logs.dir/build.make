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

# Utility rule file for clear-dtrace-logs.

# Include the progress variables for this target.
include tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/progress.make

tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Clearing old dtrace data"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training && /usr/local/bin/python2.7 /Users/nhacnguyen/workspace/llvm/tools/clang/utils/perf-training/perf-helper.py clean /Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training dtrace

clear-dtrace-logs: tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs
clear-dtrace-logs: tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/build.make

.PHONY : clear-dtrace-logs

# Rule to build all files generated by this target.
tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/build: clear-dtrace-logs

.PHONY : tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/build

tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/clean:
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training && $(CMAKE_COMMAND) -P CMakeFiles/clear-dtrace-logs.dir/cmake_clean.cmake
.PHONY : tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/clean

tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nhacnguyen/workspace/llvm /Users/nhacnguyen/workspace/llvm/tools/clang/utils/perf-training /Users/nhacnguyen/workspace/llvm/Build /Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training /Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/utils/perf-training/CMakeFiles/clear-dtrace-logs.dir/depend

