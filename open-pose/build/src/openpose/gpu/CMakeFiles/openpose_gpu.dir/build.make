# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.22

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
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
RM = /usr/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pc/Documents/openpose

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pc/Documents/openpose/build

# Include any dependencies generated for this target.
include src/openpose/gpu/CMakeFiles/openpose_gpu.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/openpose/gpu/CMakeFiles/openpose_gpu.dir/compiler_depend.make

# Include the progress variables for this target.
include src/openpose/gpu/CMakeFiles/openpose_gpu.dir/progress.make

# Include the compile flags for this target's objects.
include src/openpose/gpu/CMakeFiles/openpose_gpu.dir/flags.make

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/flags.make
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o: ../src/openpose/gpu/cuda.cpp
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/Documents/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o -MF CMakeFiles/openpose_gpu.dir/cuda.cpp.o.d -o CMakeFiles/openpose_gpu.dir/cuda.cpp.o -c /home/pc/Documents/openpose/src/openpose/gpu/cuda.cpp

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_gpu.dir/cuda.cpp.i"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/Documents/openpose/src/openpose/gpu/cuda.cpp > CMakeFiles/openpose_gpu.dir/cuda.cpp.i

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_gpu.dir/cuda.cpp.s"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/Documents/openpose/src/openpose/gpu/cuda.cpp -o CMakeFiles/openpose_gpu.dir/cuda.cpp.s

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/flags.make
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o: ../src/openpose/gpu/gpu.cpp
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/Documents/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o -MF CMakeFiles/openpose_gpu.dir/gpu.cpp.o.d -o CMakeFiles/openpose_gpu.dir/gpu.cpp.o -c /home/pc/Documents/openpose/src/openpose/gpu/gpu.cpp

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_gpu.dir/gpu.cpp.i"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/Documents/openpose/src/openpose/gpu/gpu.cpp > CMakeFiles/openpose_gpu.dir/gpu.cpp.i

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_gpu.dir/gpu.cpp.s"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/Documents/openpose/src/openpose/gpu/gpu.cpp -o CMakeFiles/openpose_gpu.dir/gpu.cpp.s

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/flags.make
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o: ../src/openpose/gpu/opencl.cpp
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pc/Documents/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o -MF CMakeFiles/openpose_gpu.dir/opencl.cpp.o.d -o CMakeFiles/openpose_gpu.dir/opencl.cpp.o -c /home/pc/Documents/openpose/src/openpose/gpu/opencl.cpp

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/openpose_gpu.dir/opencl.cpp.i"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pc/Documents/openpose/src/openpose/gpu/opencl.cpp > CMakeFiles/openpose_gpu.dir/opencl.cpp.i

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/openpose_gpu.dir/opencl.cpp.s"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pc/Documents/openpose/src/openpose/gpu/opencl.cpp -o CMakeFiles/openpose_gpu.dir/opencl.cpp.s

# Object files for target openpose_gpu
openpose_gpu_OBJECTS = \
"CMakeFiles/openpose_gpu.dir/cuda.cpp.o" \
"CMakeFiles/openpose_gpu.dir/gpu.cpp.o" \
"CMakeFiles/openpose_gpu.dir/opencl.cpp.o"

# External object files for target openpose_gpu
openpose_gpu_EXTERNAL_OBJECTS =

src/openpose/gpu/libopenpose_gpu.so: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/cuda.cpp.o
src/openpose/gpu/libopenpose_gpu.so: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/gpu.cpp.o
src/openpose/gpu/libopenpose_gpu.so: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/opencl.cpp.o
src/openpose/gpu/libopenpose_gpu.so: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/build.make
src/openpose/gpu/libopenpose_gpu.so: src/openpose/core/libopenpose_core.so
src/openpose/gpu/libopenpose_gpu.so: src/openpose/gpu/CMakeFiles/openpose_gpu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pc/Documents/openpose/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX shared library libopenpose_gpu.so"
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/openpose_gpu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/openpose/gpu/CMakeFiles/openpose_gpu.dir/build: src/openpose/gpu/libopenpose_gpu.so
.PHONY : src/openpose/gpu/CMakeFiles/openpose_gpu.dir/build

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/clean:
	cd /home/pc/Documents/openpose/build/src/openpose/gpu && $(CMAKE_COMMAND) -P CMakeFiles/openpose_gpu.dir/cmake_clean.cmake
.PHONY : src/openpose/gpu/CMakeFiles/openpose_gpu.dir/clean

src/openpose/gpu/CMakeFiles/openpose_gpu.dir/depend:
	cd /home/pc/Documents/openpose/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pc/Documents/openpose /home/pc/Documents/openpose/src/openpose/gpu /home/pc/Documents/openpose/build /home/pc/Documents/openpose/build/src/openpose/gpu /home/pc/Documents/openpose/build/src/openpose/gpu/CMakeFiles/openpose_gpu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/openpose/gpu/CMakeFiles/openpose_gpu.dir/depend

