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

# Utility rule file for emacs_byte_compile_ac-rtags.el.

# Include the progress variables for this target.
include src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/progress.make

src/CMakeFiles/emacs_byte_compile_ac-rtags.el: src/ac-rtags.elc


src/ac-rtags.elc: src/ac-rtags.el
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Creating byte-compiled Emacs lisp /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src/ac-rtags.elc"
	cd /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src && /usr/local/bin/emacs -batch -l /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src/compile-shim.elisp -l /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src/rtags.el -f batch-byte-compile /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src/ac-rtags.el

emacs_byte_compile_ac-rtags.el: src/CMakeFiles/emacs_byte_compile_ac-rtags.el
emacs_byte_compile_ac-rtags.el: src/ac-rtags.elc
emacs_byte_compile_ac-rtags.el: src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/build.make

.PHONY : emacs_byte_compile_ac-rtags.el

# Rule to build all files generated by this target.
src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/build: emacs_byte_compile_ac-rtags.el

.PHONY : src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/build

src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/clean:
	cd /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src && $(CMAKE_COMMAND) -P CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/clean

src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/depend:
	cd /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9 /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src /home/ddovod/.emacs.d/elpa/rtags-20170421.1131/rtags-2.9/src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/emacs_byte_compile_ac-rtags.el.dir/depend

