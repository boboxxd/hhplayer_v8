# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

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
CMAKE_COMMAND = /home/xxd/software/clion-2018.1.5/bin/cmake/bin/cmake

# The command to remove a file.
RM = /home/xxd/software/clion-2018.1.5/bin/cmake/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/xxd/CLionProjects/hhplayer_v8

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug

# Utility rule file for demo_autogen.

# Include the progress variables for this target.
include demo/CMakeFiles/demo_autogen.dir/progress.make

demo/CMakeFiles/demo_autogen:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Automatic MOC, UIC and RCC for target demo"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/demo && /home/xxd/software/clion-2018.1.5/bin/cmake/bin/cmake -E cmake_autogen /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/demo/CMakeFiles/demo_autogen.dir Debug

demo_autogen: demo/CMakeFiles/demo_autogen
demo_autogen: demo/CMakeFiles/demo_autogen.dir/build.make

.PHONY : demo_autogen

# Rule to build all files generated by this target.
demo/CMakeFiles/demo_autogen.dir/build: demo_autogen

.PHONY : demo/CMakeFiles/demo_autogen.dir/build

demo/CMakeFiles/demo_autogen.dir/clean:
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/demo && $(CMAKE_COMMAND) -P CMakeFiles/demo_autogen.dir/cmake_clean.cmake
.PHONY : demo/CMakeFiles/demo_autogen.dir/clean

demo/CMakeFiles/demo_autogen.dir/depend:
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxd/CLionProjects/hhplayer_v8 /home/xxd/CLionProjects/hhplayer_v8/demo /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/demo /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/demo/CMakeFiles/demo_autogen.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : demo/CMakeFiles/demo_autogen.dir/depend

