# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.26

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
CMAKE_COMMAND = /home/vulchecker/.local/lib/python3.8/site-packages/cmake/data/bin/cmake

# The command to remove a file.
RM = /home/vulchecker/.local/lib/python3.8/site-packages/cmake/data/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/vulchecker/cmake_project_CWE121

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/vulchecker/cmake_project_CWE121/build

# Include any dependencies generated for this target.
include CMakeFiles/good.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/good.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/good.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/good.dir/flags.make

CMakeFiles/good.dir/src/good.cpp.o: CMakeFiles/good.dir/flags.make
CMakeFiles/good.dir/src/good.cpp.o: /home/vulchecker/cmake_project_CWE121/src/good.cpp
CMakeFiles/good.dir/src/good.cpp.o: CMakeFiles/good.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/vulchecker/cmake_project_CWE121/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/good.dir/src/good.cpp.o"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/good.dir/src/good.cpp.o -MF CMakeFiles/good.dir/src/good.cpp.o.d -o CMakeFiles/good.dir/src/good.cpp.o -c /home/vulchecker/cmake_project_CWE121/src/good.cpp

CMakeFiles/good.dir/src/good.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/good.dir/src/good.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/vulchecker/cmake_project_CWE121/src/good.cpp > CMakeFiles/good.dir/src/good.cpp.i

CMakeFiles/good.dir/src/good.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/good.dir/src/good.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/vulchecker/cmake_project_CWE121/src/good.cpp -o CMakeFiles/good.dir/src/good.cpp.s

# Object files for target good
good_OBJECTS = \
"CMakeFiles/good.dir/src/good.cpp.o"

# External object files for target good
good_EXTERNAL_OBJECTS =

good: CMakeFiles/good.dir/src/good.cpp.o
good: CMakeFiles/good.dir/build.make
good: CMakeFiles/good.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/vulchecker/cmake_project_CWE121/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable good"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/good.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/good.dir/build: good
.PHONY : CMakeFiles/good.dir/build

CMakeFiles/good.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/good.dir/cmake_clean.cmake
.PHONY : CMakeFiles/good.dir/clean

CMakeFiles/good.dir/depend:
	cd /home/vulchecker/cmake_project_CWE121/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/vulchecker/cmake_project_CWE121 /home/vulchecker/cmake_project_CWE121 /home/vulchecker/cmake_project_CWE121/build /home/vulchecker/cmake_project_CWE121/build /home/vulchecker/cmake_project_CWE121/build/CMakeFiles/good.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/good.dir/depend

