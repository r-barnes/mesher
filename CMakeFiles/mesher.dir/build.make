# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/chris/Desktop/mesher

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/chris/Desktop/mesher

# Include any dependencies generated for this target.
include CMakeFiles/mesher.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/mesher.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/mesher.dir/flags.make

CMakeFiles/mesher.dir/src/mesher.cpp.o: CMakeFiles/mesher.dir/flags.make
CMakeFiles/mesher.dir/src/mesher.cpp.o: src/mesher.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chris/Desktop/mesher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/mesher.dir/src/mesher.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mesher.dir/src/mesher.cpp.o -c /Users/chris/Desktop/mesher/src/mesher.cpp

CMakeFiles/mesher.dir/src/mesher.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mesher.dir/src/mesher.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chris/Desktop/mesher/src/mesher.cpp > CMakeFiles/mesher.dir/src/mesher.cpp.i

CMakeFiles/mesher.dir/src/mesher.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mesher.dir/src/mesher.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chris/Desktop/mesher/src/mesher.cpp -o CMakeFiles/mesher.dir/src/mesher.cpp.s

CMakeFiles/mesher.dir/src/mesher.cpp.o.requires:

.PHONY : CMakeFiles/mesher.dir/src/mesher.cpp.o.requires

CMakeFiles/mesher.dir/src/mesher.cpp.o.provides: CMakeFiles/mesher.dir/src/mesher.cpp.o.requires
	$(MAKE) -f CMakeFiles/mesher.dir/build.make CMakeFiles/mesher.dir/src/mesher.cpp.o.provides.build
.PHONY : CMakeFiles/mesher.dir/src/mesher.cpp.o.provides

CMakeFiles/mesher.dir/src/mesher.cpp.o.provides.build: CMakeFiles/mesher.dir/src/mesher.cpp.o


CMakeFiles/mesher.dir/src/triangle.cpp.o: CMakeFiles/mesher.dir/flags.make
CMakeFiles/mesher.dir/src/triangle.cpp.o: src/triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chris/Desktop/mesher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/mesher.dir/src/triangle.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mesher.dir/src/triangle.cpp.o -c /Users/chris/Desktop/mesher/src/triangle.cpp

CMakeFiles/mesher.dir/src/triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mesher.dir/src/triangle.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chris/Desktop/mesher/src/triangle.cpp > CMakeFiles/mesher.dir/src/triangle.cpp.i

CMakeFiles/mesher.dir/src/triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mesher.dir/src/triangle.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chris/Desktop/mesher/src/triangle.cpp -o CMakeFiles/mesher.dir/src/triangle.cpp.s

CMakeFiles/mesher.dir/src/triangle.cpp.o.requires:

.PHONY : CMakeFiles/mesher.dir/src/triangle.cpp.o.requires

CMakeFiles/mesher.dir/src/triangle.cpp.o.provides: CMakeFiles/mesher.dir/src/triangle.cpp.o.requires
	$(MAKE) -f CMakeFiles/mesher.dir/build.make CMakeFiles/mesher.dir/src/triangle.cpp.o.provides.build
.PHONY : CMakeFiles/mesher.dir/src/triangle.cpp.o.provides

CMakeFiles/mesher.dir/src/triangle.cpp.o.provides.build: CMakeFiles/mesher.dir/src/triangle.cpp.o


CMakeFiles/mesher.dir/src/raster.cpp.o: CMakeFiles/mesher.dir/flags.make
CMakeFiles/mesher.dir/src/raster.cpp.o: src/raster.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/chris/Desktop/mesher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/mesher.dir/src/raster.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/mesher.dir/src/raster.cpp.o -c /Users/chris/Desktop/mesher/src/raster.cpp

CMakeFiles/mesher.dir/src/raster.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/mesher.dir/src/raster.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/chris/Desktop/mesher/src/raster.cpp > CMakeFiles/mesher.dir/src/raster.cpp.i

CMakeFiles/mesher.dir/src/raster.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/mesher.dir/src/raster.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/chris/Desktop/mesher/src/raster.cpp -o CMakeFiles/mesher.dir/src/raster.cpp.s

CMakeFiles/mesher.dir/src/raster.cpp.o.requires:

.PHONY : CMakeFiles/mesher.dir/src/raster.cpp.o.requires

CMakeFiles/mesher.dir/src/raster.cpp.o.provides: CMakeFiles/mesher.dir/src/raster.cpp.o.requires
	$(MAKE) -f CMakeFiles/mesher.dir/build.make CMakeFiles/mesher.dir/src/raster.cpp.o.provides.build
.PHONY : CMakeFiles/mesher.dir/src/raster.cpp.o.provides

CMakeFiles/mesher.dir/src/raster.cpp.o.provides.build: CMakeFiles/mesher.dir/src/raster.cpp.o


# Object files for target mesher
mesher_OBJECTS = \
"CMakeFiles/mesher.dir/src/mesher.cpp.o" \
"CMakeFiles/mesher.dir/src/triangle.cpp.o" \
"CMakeFiles/mesher.dir/src/raster.cpp.o"

# External object files for target mesher
mesher_EXTERNAL_OBJECTS =

mesher: CMakeFiles/mesher.dir/src/mesher.cpp.o
mesher: CMakeFiles/mesher.dir/src/triangle.cpp.o
mesher: CMakeFiles/mesher.dir/src/raster.cpp.o
mesher: CMakeFiles/mesher.dir/build.make
mesher: /usr/local/lib/libmpfr.dylib
mesher: /usr/local/lib/libgmp.dylib
mesher: /usr/local/lib/libCGAL.12.0.0.dylib
mesher: /usr/local/lib/libboost_thread-mt.dylib
mesher: /usr/local/lib/libboost_system-mt.dylib
mesher: /usr/local/lib/libboost_program_options-mt.dylib
mesher: /usr/local/lib/libboost_filesystem-mt.dylib
mesher: /usr/local/lib/libboost_system-mt.dylib
mesher: /usr/local/lib/libboost_program_options-mt.dylib
mesher: /usr/local/lib/libboost_filesystem-mt.dylib
mesher: CMakeFiles/mesher.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/chris/Desktop/mesher/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable mesher"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/mesher.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/mesher.dir/build: mesher

.PHONY : CMakeFiles/mesher.dir/build

CMakeFiles/mesher.dir/requires: CMakeFiles/mesher.dir/src/mesher.cpp.o.requires
CMakeFiles/mesher.dir/requires: CMakeFiles/mesher.dir/src/triangle.cpp.o.requires
CMakeFiles/mesher.dir/requires: CMakeFiles/mesher.dir/src/raster.cpp.o.requires

.PHONY : CMakeFiles/mesher.dir/requires

CMakeFiles/mesher.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/mesher.dir/cmake_clean.cmake
.PHONY : CMakeFiles/mesher.dir/clean

CMakeFiles/mesher.dir/depend:
	cd /Users/chris/Desktop/mesher && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/chris/Desktop/mesher /Users/chris/Desktop/mesher /Users/chris/Desktop/mesher /Users/chris/Desktop/mesher /Users/chris/Desktop/mesher/CMakeFiles/mesher.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/mesher.dir/depend
