# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.0

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
CMAKE_SOURCE_DIR = /home/joaqim/tribble

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/joaqim/tribble/build

# Include any dependencies generated for this target.
include src/CMakeFiles/geometry.dir/depend.make

# Include the progress variables for this target.
include src/CMakeFiles/geometry.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/geometry.dir/flags.make

src/CMakeFiles/geometry.dir/geometry.cpp.o: src/CMakeFiles/geometry.dir/flags.make
src/CMakeFiles/geometry.dir/geometry.cpp.o: ../src/geometry.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/joaqim/tribble/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object src/CMakeFiles/geometry.dir/geometry.cpp.o"
	cd /home/joaqim/tribble/build/src && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/geometry.dir/geometry.cpp.o -c /home/joaqim/tribble/src/geometry.cpp

src/CMakeFiles/geometry.dir/geometry.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/geometry.dir/geometry.cpp.i"
	cd /home/joaqim/tribble/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/joaqim/tribble/src/geometry.cpp > CMakeFiles/geometry.dir/geometry.cpp.i

src/CMakeFiles/geometry.dir/geometry.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/geometry.dir/geometry.cpp.s"
	cd /home/joaqim/tribble/build/src && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/joaqim/tribble/src/geometry.cpp -o CMakeFiles/geometry.dir/geometry.cpp.s

src/CMakeFiles/geometry.dir/geometry.cpp.o.requires:
.PHONY : src/CMakeFiles/geometry.dir/geometry.cpp.o.requires

src/CMakeFiles/geometry.dir/geometry.cpp.o.provides: src/CMakeFiles/geometry.dir/geometry.cpp.o.requires
	$(MAKE) -f src/CMakeFiles/geometry.dir/build.make src/CMakeFiles/geometry.dir/geometry.cpp.o.provides.build
.PHONY : src/CMakeFiles/geometry.dir/geometry.cpp.o.provides

src/CMakeFiles/geometry.dir/geometry.cpp.o.provides.build: src/CMakeFiles/geometry.dir/geometry.cpp.o

# Object files for target geometry
geometry_OBJECTS = \
"CMakeFiles/geometry.dir/geometry.cpp.o"

# External object files for target geometry
geometry_EXTERNAL_OBJECTS =

src/libgeometry.a: src/CMakeFiles/geometry.dir/geometry.cpp.o
src/libgeometry.a: src/CMakeFiles/geometry.dir/build.make
src/libgeometry.a: src/CMakeFiles/geometry.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX static library libgeometry.a"
	cd /home/joaqim/tribble/build/src && $(CMAKE_COMMAND) -P CMakeFiles/geometry.dir/cmake_clean_target.cmake
	cd /home/joaqim/tribble/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/geometry.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/geometry.dir/build: src/libgeometry.a
.PHONY : src/CMakeFiles/geometry.dir/build

src/CMakeFiles/geometry.dir/requires: src/CMakeFiles/geometry.dir/geometry.cpp.o.requires
.PHONY : src/CMakeFiles/geometry.dir/requires

src/CMakeFiles/geometry.dir/clean:
	cd /home/joaqim/tribble/build/src && $(CMAKE_COMMAND) -P CMakeFiles/geometry.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/geometry.dir/clean

src/CMakeFiles/geometry.dir/depend:
	cd /home/joaqim/tribble/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/joaqim/tribble /home/joaqim/tribble/src /home/joaqim/tribble/build /home/joaqim/tribble/build/src /home/joaqim/tribble/build/src/CMakeFiles/geometry.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/geometry.dir/depend

