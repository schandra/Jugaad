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

# Utility rule file for GenFixPrivs.

# Include the progress variables for this target.
include scripts/CMakeFiles/GenFixPrivs.dir/progress.make

scripts/CMakeFiles/GenFixPrivs: scripts/mysql_fix_privilege_tables_sql.c

scripts/mysql_fix_privilege_tables_sql.c: scripts/comp_sql
scripts/mysql_fix_privilege_tables_sql.c: scripts/mysql_system_tables.sql
scripts/mysql_fix_privilege_tables_sql.c: scripts/mysql_system_tables_fix.sql
	$(CMAKE_COMMAND) -E cmake_progress_report /home/schandra/Jugaad/mysql-5.5.37/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating mysql_fix_privilege_tables_sql.c"
	cd /home/schandra/Jugaad/mysql-5.5.37/scripts && /usr/bin/cmake -E chdir /home/schandra/Jugaad/mysql-5.5.37/scripts /bin/cat mysql_system_tables.sql mysql_system_tables_fix.sql > /home/schandra/Jugaad/mysql-5.5.37/scripts/mysql_fix_privilege_tables.sql
	cd /home/schandra/Jugaad/mysql-5.5.37/scripts && /home/schandra/Jugaad/mysql-5.5.37/scripts/comp_sql mysql_fix_privilege_tables mysql_fix_privilege_tables.sql mysql_fix_privilege_tables_sql.c

GenFixPrivs: scripts/CMakeFiles/GenFixPrivs
GenFixPrivs: scripts/mysql_fix_privilege_tables_sql.c
GenFixPrivs: scripts/CMakeFiles/GenFixPrivs.dir/build.make
.PHONY : GenFixPrivs

# Rule to build all files generated by this target.
scripts/CMakeFiles/GenFixPrivs.dir/build: GenFixPrivs
.PHONY : scripts/CMakeFiles/GenFixPrivs.dir/build

scripts/CMakeFiles/GenFixPrivs.dir/clean:
	cd /home/schandra/Jugaad/mysql-5.5.37/scripts && $(CMAKE_COMMAND) -P CMakeFiles/GenFixPrivs.dir/cmake_clean.cmake
.PHONY : scripts/CMakeFiles/GenFixPrivs.dir/clean

scripts/CMakeFiles/GenFixPrivs.dir/depend:
	cd /home/schandra/Jugaad/mysql-5.5.37 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/scripts /home/schandra/Jugaad/mysql-5.5.37 /home/schandra/Jugaad/mysql-5.5.37/scripts /home/schandra/Jugaad/mysql-5.5.37/scripts/CMakeFiles/GenFixPrivs.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : scripts/CMakeFiles/GenFixPrivs.dir/depend

