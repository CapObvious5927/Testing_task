# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.14

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
CMAKE_COMMAND = /home/super_arina___/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.6707.69/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/super_arina___/.local/share/JetBrains/Toolbox/apps/CLion/ch-0/191.6707.69/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/super_arina___/CLionProjects/task1

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/super_arina___/CLionProjects/task1/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/task1.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/task1.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/task1.dir/flags.make

CMakeFiles/task1.dir/main.cpp.o: CMakeFiles/task1.dir/flags.make
CMakeFiles/task1.dir/main.cpp.o: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/super_arina___/CLionProjects/task1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/task1.dir/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/task1.dir/main.cpp.o -c /home/super_arina___/CLionProjects/task1/main.cpp

CMakeFiles/task1.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/task1.dir/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/super_arina___/CLionProjects/task1/main.cpp > CMakeFiles/task1.dir/main.cpp.i

CMakeFiles/task1.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/task1.dir/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/super_arina___/CLionProjects/task1/main.cpp -o CMakeFiles/task1.dir/main.cpp.s

# Object files for target task1
task1_OBJECTS = \
"CMakeFiles/task1.dir/main.cpp.o"

# External object files for target task1
task1_EXTERNAL_OBJECTS =

task1: CMakeFiles/task1.dir/main.cpp.o
task1: CMakeFiles/task1.dir/build.make
task1: CMakeFiles/task1.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/super_arina___/CLionProjects/task1/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable task1"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/task1.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/task1.dir/build: task1

.PHONY : CMakeFiles/task1.dir/build

CMakeFiles/task1.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/task1.dir/cmake_clean.cmake
.PHONY : CMakeFiles/task1.dir/clean

CMakeFiles/task1.dir/depend:
	cd /home/super_arina___/CLionProjects/task1/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/super_arina___/CLionProjects/task1 /home/super_arina___/CLionProjects/task1 /home/super_arina___/CLionProjects/task1/cmake-build-debug /home/super_arina___/CLionProjects/task1/cmake-build-debug /home/super_arina___/CLionProjects/task1/cmake-build-debug/CMakeFiles/task1.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/task1.dir/depend
