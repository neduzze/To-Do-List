# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/nadenka/clion-2019.3.2/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/nadenka/clion-2019.3.2/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/nadenka/Documents/code/cpp/TodoList

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/TodoList.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/TodoList.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/TodoList.dir/flags.make

CMakeFiles/TodoList.dir/src/main.cpp.o: CMakeFiles/TodoList.dir/flags.make
CMakeFiles/TodoList.dir/src/main.cpp.o: ../src/main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/TodoList.dir/src/main.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TodoList.dir/src/main.cpp.o -c /home/nadenka/Documents/code/cpp/TodoList/src/main.cpp

CMakeFiles/TodoList.dir/src/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TodoList.dir/src/main.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nadenka/Documents/code/cpp/TodoList/src/main.cpp > CMakeFiles/TodoList.dir/src/main.cpp.i

CMakeFiles/TodoList.dir/src/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TodoList.dir/src/main.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nadenka/Documents/code/cpp/TodoList/src/main.cpp -o CMakeFiles/TodoList.dir/src/main.cpp.s

CMakeFiles/TodoList.dir/src/TodoList.cpp.o: CMakeFiles/TodoList.dir/flags.make
CMakeFiles/TodoList.dir/src/TodoList.cpp.o: ../src/TodoList.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/TodoList.dir/src/TodoList.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/TodoList.dir/src/TodoList.cpp.o -c /home/nadenka/Documents/code/cpp/TodoList/src/TodoList.cpp

CMakeFiles/TodoList.dir/src/TodoList.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/TodoList.dir/src/TodoList.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/nadenka/Documents/code/cpp/TodoList/src/TodoList.cpp > CMakeFiles/TodoList.dir/src/TodoList.cpp.i

CMakeFiles/TodoList.dir/src/TodoList.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/TodoList.dir/src/TodoList.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/nadenka/Documents/code/cpp/TodoList/src/TodoList.cpp -o CMakeFiles/TodoList.dir/src/TodoList.cpp.s

# Object files for target TodoList
TodoList_OBJECTS = \
"CMakeFiles/TodoList.dir/src/main.cpp.o" \
"CMakeFiles/TodoList.dir/src/TodoList.cpp.o"

# External object files for target TodoList
TodoList_EXTERNAL_OBJECTS =

TodoList: CMakeFiles/TodoList.dir/src/main.cpp.o
TodoList: CMakeFiles/TodoList.dir/src/TodoList.cpp.o
TodoList: CMakeFiles/TodoList.dir/build.make
TodoList: CMakeFiles/TodoList.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable TodoList"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/TodoList.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/TodoList.dir/build: TodoList

.PHONY : CMakeFiles/TodoList.dir/build

CMakeFiles/TodoList.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/TodoList.dir/cmake_clean.cmake
.PHONY : CMakeFiles/TodoList.dir/clean

CMakeFiles/TodoList.dir/depend:
	cd /home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/nadenka/Documents/code/cpp/TodoList /home/nadenka/Documents/code/cpp/TodoList /home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug /home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug /home/nadenka/Documents/code/cpp/TodoList/cmake-build-debug/CMakeFiles/TodoList.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/TodoList.dir/depend
