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
include unittest/my_decimal/CMakeFiles/my_decimal-t.dir/depend.make

# Include the progress variables for this target.
include unittest/my_decimal/CMakeFiles/my_decimal-t.dir/progress.make

# Include the compile flags for this target's objects.
include unittest/my_decimal/CMakeFiles/my_decimal-t.dir/flags.make

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/flags.make
unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o: unittest/my_decimal/my_decimal-t.cc
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schandra/Jugaad/mysql-5.5.37/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o -c /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal/my_decimal-t.cc

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.i"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal/my_decimal-t.cc > CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.i

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.s"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal/my_decimal-t.cc -o CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.s

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.requires:
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.requires

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.provides: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.requires
	$(MAKE) -f unittest/my_decimal/CMakeFiles/my_decimal-t.dir/build.make unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.provides.build
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.provides

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.provides.build: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o

# Object files for target my_decimal-t
my_decimal__t_OBJECTS = \
"CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o"

# External object files for target my_decimal-t
my_decimal__t_EXTERNAL_OBJECTS =

unittest/my_decimal/my_decimal-t: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o
unittest/my_decimal/my_decimal-t: unittest/mytap/libmytap.a
unittest/my_decimal/my_decimal-t: mysys/libmysys.a
unittest/my_decimal/my_decimal-t: strings/libstrings.a
unittest/my_decimal/my_decimal-t: dbug/libdbug.a
unittest/my_decimal/my_decimal-t: mysys/libmysys.a
unittest/my_decimal/my_decimal-t: dbug/libdbug.a
unittest/my_decimal/my_decimal-t: strings/libstrings.a
unittest/my_decimal/my_decimal-t: zlib/libzlib.a
unittest/my_decimal/my_decimal-t: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/build.make
unittest/my_decimal/my_decimal-t: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable my_decimal-t"
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/my_decimal-t.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
unittest/my_decimal/CMakeFiles/my_decimal-t.dir/build: unittest/my_decimal/my_decimal-t
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/build

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/requires: unittest/my_decimal/CMakeFiles/my_decimal-t.dir/my_decimal-t.cc.o.requires
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/requires

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/clean:
	cd /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal && $(CMAKE_COMMAND) -P CMakeFiles/my_decimal-t.dir/cmake_clean.cmake
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/clean

unittest/my_decimal/CMakeFiles/my_decimal-t.dir/depend:
	cd /home/schandra/Jugaad/mysql-5.5.37 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal /home/schandra/Jugaad/mysql-5.5.37/unittest/my_decimal/CMakeFiles/my_decimal-t.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : unittest/my_decimal/CMakeFiles/my_decimal-t.dir/depend

