# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/schandra/Jugaad/mysql-5.5.37

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/schandra/Jugaad/mysql-5.5.37

# Include any dependencies generated for this target.
include extra/CMakeFiles/my_print_defaults.dir/depend.make

# Include the progress variables for this target.
include extra/CMakeFiles/my_print_defaults.dir/progress.make

# Include the compile flags for this target's objects.
include extra/CMakeFiles/my_print_defaults.dir/flags.make

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o: extra/CMakeFiles/my_print_defaults.dir/flags.make
extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o: extra/my_print_defaults.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schandra/Jugaad/mysql-5.5.37/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o"
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o   -c /home/schandra/Jugaad/mysql-5.5.37/extra/my_print_defaults.c

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_print_defaults.dir/my_print_defaults.c.i"
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/schandra/Jugaad/mysql-5.5.37/extra/my_print_defaults.c > CMakeFiles/my_print_defaults.dir/my_print_defaults.c.i

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_print_defaults.dir/my_print_defaults.c.s"
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/schandra/Jugaad/mysql-5.5.37/extra/my_print_defaults.c -o CMakeFiles/my_print_defaults.dir/my_print_defaults.c.s

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.requires:
.PHONY : extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.requires

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.provides: extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.requires
	$(MAKE) -f extra/CMakeFiles/my_print_defaults.dir/build.make extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.provides.build
.PHONY : extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.provides

extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.provides.build: extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o

# Object files for target my_print_defaults
my_print_defaults_OBJECTS = \
"CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o"

# External object files for target my_print_defaults
my_print_defaults_EXTERNAL_OBJECTS =

extra/my_print_defaults: extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o
extra/my_print_defaults: mysys/libmysys.a
extra/my_print_defaults: dbug/libdbug.a
extra/my_print_defaults: mysys/libmysys.a
extra/my_print_defaults: dbug/libdbug.a
extra/my_print_defaults: strings/libstrings.a
extra/my_print_defaults: zlib/libzlib.a
extra/my_print_defaults: extra/CMakeFiles/my_print_defaults.dir/build.make
extra/my_print_defaults: extra/CMakeFiles/my_print_defaults.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable my_print_defaults"
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_print_defaults.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
extra/CMakeFiles/my_print_defaults.dir/build: extra/my_print_defaults
.PHONY : extra/CMakeFiles/my_print_defaults.dir/build

extra/CMakeFiles/my_print_defaults.dir/requires: extra/CMakeFiles/my_print_defaults.dir/my_print_defaults.c.o.requires
.PHONY : extra/CMakeFiles/my_print_defaults.dir/requires

extra/CMakeFiles/my_print_defaults.dir/clean:
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && $(CMAKE_COMMAND) -P CMakeFiles/my_print_defaults.dir/cmake_clean.cmake
.PHONY : extra/CMakeFiles/my_print_defaults.dir/clean

extra/CMakeFiles/my_print_defaults.dir/depend:
	cd /home/schandra/Jugaad/mysql-5.5.37 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/extra /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/extra /home/schandra/Jugaad/mysql-5.5.37/extra/CMakeFiles/my_print_defaults.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extra/CMakeFiles/my_print_defaults.dir/depend

