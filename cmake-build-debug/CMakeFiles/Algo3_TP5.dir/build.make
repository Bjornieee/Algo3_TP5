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
CMAKE_COMMAND = /home/haissam/JetBrainsApp/clion-2023.2.2/bin/cmake/linux/x64/bin/cmake

# The command to remove a file.
RM = /home/haissam/JetBrainsApp/clion-2023.2.2/bin/cmake/linux/x64/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/haissam/depot_git/Algo3_TP5

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/haissam/depot_git/Algo3_TP5/cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/Algo3_TP5.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Algo3_TP5.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Algo3_TP5.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Algo3_TP5.dir/flags.make

CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o: CMakeFiles/Algo3_TP5.dir/flags.make
CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o: /home/haissam/depot_git/Algo3_TP5/Code/bstree.c
CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o: CMakeFiles/Algo3_TP5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haissam/depot_git/Algo3_TP5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o -MF CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o.d -o CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o -c /home/haissam/depot_git/Algo3_TP5/Code/bstree.c

CMakeFiles/Algo3_TP5.dir/Code/bstree.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Algo3_TP5.dir/Code/bstree.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/haissam/depot_git/Algo3_TP5/Code/bstree.c > CMakeFiles/Algo3_TP5.dir/Code/bstree.c.i

CMakeFiles/Algo3_TP5.dir/Code/bstree.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Algo3_TP5.dir/Code/bstree.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/haissam/depot_git/Algo3_TP5/Code/bstree.c -o CMakeFiles/Algo3_TP5.dir/Code/bstree.c.s

CMakeFiles/Algo3_TP5.dir/Code/main.c.o: CMakeFiles/Algo3_TP5.dir/flags.make
CMakeFiles/Algo3_TP5.dir/Code/main.c.o: /home/haissam/depot_git/Algo3_TP5/Code/main.c
CMakeFiles/Algo3_TP5.dir/Code/main.c.o: CMakeFiles/Algo3_TP5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haissam/depot_git/Algo3_TP5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building C object CMakeFiles/Algo3_TP5.dir/Code/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Algo3_TP5.dir/Code/main.c.o -MF CMakeFiles/Algo3_TP5.dir/Code/main.c.o.d -o CMakeFiles/Algo3_TP5.dir/Code/main.c.o -c /home/haissam/depot_git/Algo3_TP5/Code/main.c

CMakeFiles/Algo3_TP5.dir/Code/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Algo3_TP5.dir/Code/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/haissam/depot_git/Algo3_TP5/Code/main.c > CMakeFiles/Algo3_TP5.dir/Code/main.c.i

CMakeFiles/Algo3_TP5.dir/Code/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Algo3_TP5.dir/Code/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/haissam/depot_git/Algo3_TP5/Code/main.c -o CMakeFiles/Algo3_TP5.dir/Code/main.c.s

CMakeFiles/Algo3_TP5.dir/Code/queue.c.o: CMakeFiles/Algo3_TP5.dir/flags.make
CMakeFiles/Algo3_TP5.dir/Code/queue.c.o: /home/haissam/depot_git/Algo3_TP5/Code/queue.c
CMakeFiles/Algo3_TP5.dir/Code/queue.c.o: CMakeFiles/Algo3_TP5.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/haissam/depot_git/Algo3_TP5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/Algo3_TP5.dir/Code/queue.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -MD -MT CMakeFiles/Algo3_TP5.dir/Code/queue.c.o -MF CMakeFiles/Algo3_TP5.dir/Code/queue.c.o.d -o CMakeFiles/Algo3_TP5.dir/Code/queue.c.o -c /home/haissam/depot_git/Algo3_TP5/Code/queue.c

CMakeFiles/Algo3_TP5.dir/Code/queue.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/Algo3_TP5.dir/Code/queue.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E /home/haissam/depot_git/Algo3_TP5/Code/queue.c > CMakeFiles/Algo3_TP5.dir/Code/queue.c.i

CMakeFiles/Algo3_TP5.dir/Code/queue.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/Algo3_TP5.dir/Code/queue.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S /home/haissam/depot_git/Algo3_TP5/Code/queue.c -o CMakeFiles/Algo3_TP5.dir/Code/queue.c.s

# Object files for target Algo3_TP5
Algo3_TP5_OBJECTS = \
"CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o" \
"CMakeFiles/Algo3_TP5.dir/Code/main.c.o" \
"CMakeFiles/Algo3_TP5.dir/Code/queue.c.o"

# External object files for target Algo3_TP5
Algo3_TP5_EXTERNAL_OBJECTS =

Algo3_TP5: CMakeFiles/Algo3_TP5.dir/Code/bstree.c.o
Algo3_TP5: CMakeFiles/Algo3_TP5.dir/Code/main.c.o
Algo3_TP5: CMakeFiles/Algo3_TP5.dir/Code/queue.c.o
Algo3_TP5: CMakeFiles/Algo3_TP5.dir/build.make
Algo3_TP5: CMakeFiles/Algo3_TP5.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/haissam/depot_git/Algo3_TP5/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking C executable Algo3_TP5"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/Algo3_TP5.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Algo3_TP5.dir/build: Algo3_TP5
.PHONY : CMakeFiles/Algo3_TP5.dir/build

CMakeFiles/Algo3_TP5.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/Algo3_TP5.dir/cmake_clean.cmake
.PHONY : CMakeFiles/Algo3_TP5.dir/clean

CMakeFiles/Algo3_TP5.dir/depend:
	cd /home/haissam/depot_git/Algo3_TP5/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/haissam/depot_git/Algo3_TP5 /home/haissam/depot_git/Algo3_TP5 /home/haissam/depot_git/Algo3_TP5/cmake-build-debug /home/haissam/depot_git/Algo3_TP5/cmake-build-debug /home/haissam/depot_git/Algo3_TP5/cmake-build-debug/CMakeFiles/Algo3_TP5.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/Algo3_TP5.dir/depend

