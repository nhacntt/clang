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
include tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/depend.make

# Include the progress variables for this target.
include tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/progress.make

# Include the compile flags for this target's objects.
include tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/flags.make

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/flags.make
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o: ../tools/clang/lib/Tooling/Core/Lookup.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clangToolingCore.dir/Lookup.cpp.o -c /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Lookup.cpp

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clangToolingCore.dir/Lookup.cpp.i"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Lookup.cpp > CMakeFiles/clangToolingCore.dir/Lookup.cpp.i

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clangToolingCore.dir/Lookup.cpp.s"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Lookup.cpp -o CMakeFiles/clangToolingCore.dir/Lookup.cpp.s

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.requires:

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.requires

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.provides: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.requires
	$(MAKE) -f tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build.make tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.provides.build
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.provides

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.provides.build: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o


tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/flags.make
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o: ../tools/clang/lib/Tooling/Core/Replacement.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clangToolingCore.dir/Replacement.cpp.o -c /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Replacement.cpp

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clangToolingCore.dir/Replacement.cpp.i"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Replacement.cpp > CMakeFiles/clangToolingCore.dir/Replacement.cpp.i

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clangToolingCore.dir/Replacement.cpp.s"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Replacement.cpp -o CMakeFiles/clangToolingCore.dir/Replacement.cpp.s

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.requires:

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.requires

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.provides: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.requires
	$(MAKE) -f tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build.make tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.provides.build
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.provides

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.provides.build: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o


tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/flags.make
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o: ../tools/clang/lib/Tooling/Core/QualTypeNames.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o -c /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/QualTypeNames.cpp

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.i"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/QualTypeNames.cpp > CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.i

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.s"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/QualTypeNames.cpp -o CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.s

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.requires:

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.requires

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.provides: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.requires
	$(MAKE) -f tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build.make tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.provides.build
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.provides

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.provides.build: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o


tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/flags.make
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o: ../tools/clang/lib/Tooling/Core/Diagnostic.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o -c /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Diagnostic.cpp

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.i"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Diagnostic.cpp > CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.i

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.s"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core/Diagnostic.cpp -o CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.s

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.requires:

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.requires

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.provides: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.requires
	$(MAKE) -f tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build.make tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.provides.build
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.provides

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.provides.build: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o


# Object files for target clangToolingCore
clangToolingCore_OBJECTS = \
"CMakeFiles/clangToolingCore.dir/Lookup.cpp.o" \
"CMakeFiles/clangToolingCore.dir/Replacement.cpp.o" \
"CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o" \
"CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o"

# External object files for target clangToolingCore
clangToolingCore_EXTERNAL_OBJECTS =

lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o
lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o
lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o
lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o
lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build.make
lib/libclangToolingCore.a: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nhacnguyen/workspace/llvm/Build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Linking CXX static library ../../../../../lib/libclangToolingCore.a"
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && $(CMAKE_COMMAND) -P CMakeFiles/clangToolingCore.dir/cmake_clean_target.cmake
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/clangToolingCore.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build: lib/libclangToolingCore.a

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/build

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/requires: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Lookup.cpp.o.requires
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/requires: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Replacement.cpp.o.requires
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/requires: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/QualTypeNames.cpp.o.requires
tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/requires: tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/Diagnostic.cpp.o.requires

.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/requires

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/clean:
	cd /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core && $(CMAKE_COMMAND) -P CMakeFiles/clangToolingCore.dir/cmake_clean.cmake
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/clean

tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/depend:
	cd /Users/nhacnguyen/workspace/llvm/Build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nhacnguyen/workspace/llvm /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Tooling/Core /Users/nhacnguyen/workspace/llvm/Build /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core /Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : tools/clang/lib/Tooling/Core/CMakeFiles/clangToolingCore.dir/depend

