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

# Include any dependencies generated for this target.
include libplayer/CMakeFiles/hhplayer.dir/depend.make

# Include the progress variables for this target.
include libplayer/CMakeFiles/hhplayer.dir/progress.make

# Include the compile flags for this target's objects.
include libplayer/CMakeFiles/hhplayer.dir/flags.make

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o: libplayer/CMakeFiles/hhplayer.dir/flags.make
libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o: ../libplayer/HCNetplayerImpl.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o -c /home/xxd/CLionProjects/hhplayer_v8/libplayer/HCNetplayerImpl.cpp

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.i"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxd/CLionProjects/hhplayer_v8/libplayer/HCNetplayerImpl.cpp > CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.i

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.s"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxd/CLionProjects/hhplayer_v8/libplayer/HCNetplayerImpl.cpp -o CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.s

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.requires:

.PHONY : libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.requires

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.provides: libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.requires
	$(MAKE) -f libplayer/CMakeFiles/hhplayer.dir/build.make libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.provides.build
.PHONY : libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.provides

libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.provides.build: libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o


libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o: libplayer/CMakeFiles/hhplayer.dir/flags.make
libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o: ../libplayer/hhplayerfactory.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o -c /home/xxd/CLionProjects/hhplayer_v8/libplayer/hhplayerfactory.cpp

libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.i"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/xxd/CLionProjects/hhplayer_v8/libplayer/hhplayerfactory.cpp > CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.i

libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.s"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/xxd/CLionProjects/hhplayer_v8/libplayer/hhplayerfactory.cpp -o CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.s

libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.requires:

.PHONY : libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.requires

libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.provides: libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.requires
	$(MAKE) -f libplayer/CMakeFiles/hhplayer.dir/build.make libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.provides.build
.PHONY : libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.provides

libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.provides.build: libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o


# Object files for target hhplayer
hhplayer_OBJECTS = \
"CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o" \
"CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o"

# External object files for target hhplayer
hhplayer_EXTERNAL_OBJECTS =

libplayer/libhhplayer.so: libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o
libplayer/libhhplayer.so: libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o
libplayer/libhhplayer.so: libplayer/CMakeFiles/hhplayer.dir/build.make
libplayer/libhhplayer.so: libplayer/CMakeFiles/hhplayer.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX shared library libhhplayer.so"
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/hhplayer.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
libplayer/CMakeFiles/hhplayer.dir/build: libplayer/libhhplayer.so

.PHONY : libplayer/CMakeFiles/hhplayer.dir/build

libplayer/CMakeFiles/hhplayer.dir/requires: libplayer/CMakeFiles/hhplayer.dir/HCNetplayerImpl.cpp.o.requires
libplayer/CMakeFiles/hhplayer.dir/requires: libplayer/CMakeFiles/hhplayer.dir/hhplayerfactory.cpp.o.requires

.PHONY : libplayer/CMakeFiles/hhplayer.dir/requires

libplayer/CMakeFiles/hhplayer.dir/clean:
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer && $(CMAKE_COMMAND) -P CMakeFiles/hhplayer.dir/cmake_clean.cmake
.PHONY : libplayer/CMakeFiles/hhplayer.dir/clean

libplayer/CMakeFiles/hhplayer.dir/depend:
	cd /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/xxd/CLionProjects/hhplayer_v8 /home/xxd/CLionProjects/hhplayer_v8/libplayer /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer /home/xxd/CLionProjects/hhplayer_v8/cmake-build-debug/libplayer/CMakeFiles/hhplayer.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : libplayer/CMakeFiles/hhplayer.dir/depend

