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
include unittest/mysys/CMakeFiles/my_atomic-t.dir/depend.make

# Include the progress variables for this target.
include unittest/mysys/CMakeFiles/my_atomic-t.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/mysys/CMakeFiles/my_atomic-t.dir/flags.make

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o: unittest/mysys/CMakeFiles/my_atomic-t.dir/flags.make
unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o: unittest/mysys/my_atomic-t.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schandra/Jugaad/mysql-5.5.37/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building C object unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -o CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o   -c /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys/my_atomic-t.c

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing C source to CMakeFiles/my_atomic-t.dir/my_atomic-t.c.i"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -E /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys/my_atomic-t.c > CMakeFiles/my_atomic-t.dir/my_atomic-t.c.i

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling C source to assembly CMakeFiles/my_atomic-t.dir/my_atomic-t.c.s"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys && /usr/bin/gcc  $(C_DEFINES) $(C_FLAGS) -S /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys/my_atomic-t.c -o CMakeFiles/my_atomic-t.dir/my_atomic-t.c.s

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.requires:
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.requires

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.provides: unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.requires
	$(MAKE) -f unittest/mysys/CMakeFiles/my_atomic-t.dir/build.make unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.provides.build
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.provides

unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.provides.build: unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o

# Object files for target my_atomic-t
my_atomic__t_OBJECTS = \
"CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o"

# External object files for target my_atomic-t
my_atomic__t_EXTERNAL_OBJECTS =

unittest/mysys/my_atomic-t: unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o
unittest/mysys/my_atomic-t: unittest/mytap/libmytap.a
unittest/mysys/my_atomic-t: mysys/libmysys.a
unittest/mysys/my_atomic-t: strings/libstrings.a
unittest/mysys/my_atomic-t: dbug/libdbug.a
unittest/mysys/my_atomic-t: mysys/libmysys.a
unittest/mysys/my_atomic-t: dbug/libdbug.a
unittest/mysys/my_atomic-t: strings/libstrings.a
unittest/mysys/my_atomic-t: zlib/libzlib.a
unittest/mysys/my_atomic-t: unittest/mysys/CMakeFiles/my_atomic-t.dir/build.make
unittest/mysys/my_atomic-t: unittest/mysys/CMakeFiles/my_atomic-t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking C executable my_atomic-t"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_atomic-t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/mysys/CMakeFiles/my_atomic-t.dir/build: unittest/mysys/my_atomic-t
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/build

unittest/mysys/CMakeFiles/my_atomic-t.dir/requires: unittest/mysys/CMakeFiles/my_atomic-t.dir/my_atomic-t.c.o.requires
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/requires

unittest/mysys/CMakeFiles/my_atomic-t.dir/clean:
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys && $(CMAKE_COMMAND) -P CMakeFiles/my_atomic-t.dir/cmake_clean.cmake
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/clean

unittest/mysys/CMakeFiles/my_atomic-t.dir/depend:
	cd /home/schandra/Jugaad/mysql-5.5.37 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys /home/schandra/Jugaad/mysql-5.5.37/unittest/mysys/CMakeFiles/my_atomic-t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/mysys/CMakeFiles/my_atomic-t.dir/depend
