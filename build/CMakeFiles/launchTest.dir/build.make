# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.28

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.28.1/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build

# Include any dependencies generated for this target.
include CMakeFiles/launchTest.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/launchTest.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/launchTest.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/launchTest.dir/flags.make

CMakeFiles/launchTest.dir/tests/literals.cpp.o: CMakeFiles/launchTest.dir/flags.make
CMakeFiles/launchTest.dir/tests/literals.cpp.o: /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/tests/literals.cpp
CMakeFiles/launchTest.dir/tests/literals.cpp.o: CMakeFiles/launchTest.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/launchTest.dir/tests/literals.cpp.o"
	/Applications/Workspace/Coding/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/launchTest.dir/tests/literals.cpp.o -MF CMakeFiles/launchTest.dir/tests/literals.cpp.o.d -o CMakeFiles/launchTest.dir/tests/literals.cpp.o -c /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/tests/literals.cpp

CMakeFiles/launchTest.dir/tests/literals.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/launchTest.dir/tests/literals.cpp.i"
	/Applications/Workspace/Coding/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/tests/literals.cpp > CMakeFiles/launchTest.dir/tests/literals.cpp.i

CMakeFiles/launchTest.dir/tests/literals.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/launchTest.dir/tests/literals.cpp.s"
	/Applications/Workspace/Coding/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/tests/literals.cpp -o CMakeFiles/launchTest.dir/tests/literals.cpp.s

# Object files for target launchTest
launchTest_OBJECTS = \
"CMakeFiles/launchTest.dir/tests/literals.cpp.o"

# External object files for target launchTest
launchTest_EXTERNAL_OBJECTS =

launchTest: CMakeFiles/launchTest.dir/tests/literals.cpp.o
launchTest: CMakeFiles/launchTest.dir/build.make
launchTest: /usr/local/lib/libgtest_main.a
launchTest: /usr/local/lib/libgtest.a
launchTest: CMakeFiles/launchTest.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable launchTest"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/launchTest.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/launchTest.dir/build: launchTest
.PHONY : CMakeFiles/launchTest.dir/build

CMakeFiles/launchTest.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/launchTest.dir/cmake_clean.cmake
.PHONY : CMakeFiles/launchTest.dir/clean

CMakeFiles/launchTest.dir/depend:
	cd /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build /Applications/Workspace/Projects/Github/C++/DimensionalAnalysis/build/CMakeFiles/launchTest.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/launchTest.dir/depend
