# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

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
CMAKE_SOURCE_DIR = /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9

# Utility rule file for man.

# Include the progress variables for this target.
include CMakeFiles/man.dir/progress.make

CMakeFiles/man: man/man7/rdm.7
CMakeFiles/man: man/man7/rc.7
	scripts/gen-man-pages.sh /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/bin

man: CMakeFiles/man
man: CMakeFiles/man.dir/build.make

.PHONY : man

# Rule to build all files generated by this target.
CMakeFiles/man.dir/build: man

.PHONY : CMakeFiles/man.dir/build

CMakeFiles/man.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/man.dir/cmake_clean.cmake
.PHONY : CMakeFiles/man.dir/clean

CMakeFiles/man.dir/depend:
	cd /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/CMakeFiles/man.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/man.dir/depend

