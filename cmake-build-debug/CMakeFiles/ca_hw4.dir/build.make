# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/ca_hw4.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/ca_hw4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/ca_hw4.dir/flags.make

CMakeFiles/ca_hw4.dir/main.c.o: CMakeFiles/ca_hw4.dir/flags.make
CMakeFiles/ca_hw4.dir/main.c.o: ../main.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building C object CMakeFiles/ca_hw4.dir/main.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ca_hw4.dir/main.c.o   -c "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/main.c"

CMakeFiles/ca_hw4.dir/main.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ca_hw4.dir/main.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/main.c" > CMakeFiles/ca_hw4.dir/main.c.i

CMakeFiles/ca_hw4.dir/main.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ca_hw4.dir/main.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/main.c" -o CMakeFiles/ca_hw4.dir/main.c.s

CMakeFiles/ca_hw4.dir/core_api.cpp.o: CMakeFiles/ca_hw4.dir/flags.make
CMakeFiles/ca_hw4.dir/core_api.cpp.o: ../core_api.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/ca_hw4.dir/core_api.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/ca_hw4.dir/core_api.cpp.o -c "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/core_api.cpp"

CMakeFiles/ca_hw4.dir/core_api.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/ca_hw4.dir/core_api.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/core_api.cpp" > CMakeFiles/ca_hw4.dir/core_api.cpp.i

CMakeFiles/ca_hw4.dir/core_api.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/ca_hw4.dir/core_api.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/core_api.cpp" -o CMakeFiles/ca_hw4.dir/core_api.cpp.s

CMakeFiles/ca_hw4.dir/sim_api.c.o: CMakeFiles/ca_hw4.dir/flags.make
CMakeFiles/ca_hw4.dir/sim_api.c.o: ../sim_api.c
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building C object CMakeFiles/ca_hw4.dir/sim_api.c.o"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -o CMakeFiles/ca_hw4.dir/sim_api.c.o   -c "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/sim_api.c"

CMakeFiles/ca_hw4.dir/sim_api.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/ca_hw4.dir/sim_api.c.i"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -E "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/sim_api.c" > CMakeFiles/ca_hw4.dir/sim_api.c.i

CMakeFiles/ca_hw4.dir/sim_api.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/ca_hw4.dir/sim_api.c.s"
	/usr/bin/cc $(C_DEFINES) $(C_INCLUDES) $(C_FLAGS) -S "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/sim_api.c" -o CMakeFiles/ca_hw4.dir/sim_api.c.s

# Object files for target ca_hw4
ca_hw4_OBJECTS = \
"CMakeFiles/ca_hw4.dir/main.c.o" \
"CMakeFiles/ca_hw4.dir/core_api.cpp.o" \
"CMakeFiles/ca_hw4.dir/sim_api.c.o"

# External object files for target ca_hw4
ca_hw4_EXTERNAL_OBJECTS =

ca_hw4: CMakeFiles/ca_hw4.dir/main.c.o
ca_hw4: CMakeFiles/ca_hw4.dir/core_api.cpp.o
ca_hw4: CMakeFiles/ca_hw4.dir/sim_api.c.o
ca_hw4: CMakeFiles/ca_hw4.dir/build.make
ca_hw4: CMakeFiles/ca_hw4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug/CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable ca_hw4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/ca_hw4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/ca_hw4.dir/build: ca_hw4

.PHONY : CMakeFiles/ca_hw4.dir/build

CMakeFiles/ca_hw4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/ca_hw4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/ca_hw4.dir/clean

CMakeFiles/ca_hw4.dir/depend:
	cd "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug" && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4" "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4" "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug" "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug" "/mnt/c/Users/nadav ashkenazi/OneDrive - Technion/Technion/semester_6/Computer Architecture/hw/hw4/ca_hw4/cmake-build-debug/CMakeFiles/ca_hw4.dir/DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/ca_hw4.dir/depend

