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

# Utility rule file for GenError.

# Include the progress variables for this target.
include extra/CMakeFiles/GenError.dir/progress.make

extra/CMakeFiles/GenError: include/mysqld_error.h
extra/CMakeFiles/GenError: sql/share/english/errmsg.sys
extra/CMakeFiles/GenError: sql/share/errmsg-utf8.txt

include/mysqld_error.h: sql/share/errmsg-utf8.txt
include/mysqld_error.h: extra/comp_err.c
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schandra/Jugaad/mysql-5.5.37/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating ../include/mysqld_error.h, ../sql/share/english/errmsg.sys"
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && ./comp_err --charset=/home/schandra/Jugaad/mysql-5.5.37/sql/share/charsets --out-dir=/home/schandra/Jugaad/mysql-5.5.37/sql/share/ --header_file=/home/schandra/Jugaad/mysql-5.5.37/include/mysqld_error.h --name_file=/home/schandra/Jugaad/mysql-5.5.37/include/mysqld_ername.h --state_file=/home/schandra/Jugaad/mysql-5.5.37/include/sql_state.h --in_file=/home/schandra/Jugaad/mysql-5.5.37/sql/share/errmsg-utf8.txt

sql/share/english/errmsg.sys: include/mysqld_error.h

GenError: extra/CMakeFiles/GenError
GenError: include/mysqld_error.h
GenError: sql/share/english/errmsg.sys
GenError: extra/CMakeFiles/GenError.dir/build.make
.PHONY : GenError

# Rule to build all files generated by this target.
extra/CMakeFiles/GenError.dir/build: GenError
.PHONY : extra/CMakeFiles/GenError.dir/build

extra/CMakeFiles/GenError.dir/clean:
	cd /home/schandra/Jugaad/mysql-5.5.37/extra && $(CMAKE_COMMAND) -P CMakeFiles/GenError.dir/cmake_clean.cmake
.PHONY : extra/CMakeFiles/GenError.dir/clean

extra/CMakeFiles/GenError.dir/depend:
	cd /home/schandra/Jugaad/mysql-5.5.37 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/extra /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/extra /home/schandra/Jugaad/mysql-5.5.37/extra/CMakeFiles/GenError.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : extra/CMakeFiles/GenError.dir/depend

