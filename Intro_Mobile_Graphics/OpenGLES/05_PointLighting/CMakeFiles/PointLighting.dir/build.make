# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.16

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
CMAKE_SOURCE_DIR = /home/wafer/Native_SDK/Intro_Mobile_Graphics

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/wafer/Native_SDK/Intro_Mobile_Graphics

# Include any dependencies generated for this target.
include OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend.make

# Include the progress variables for this target.
include OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/progress.make

# Include the compile flags for this target's objects.
include OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/flags.make

bin/Assets_PointLighting/Image.pvr: OpenGLES/05_PointLighting/Image.pvr
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "PowerVR_SDK_Practicals: Copying /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Image.pvr to /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Image.pvr"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E remove -f /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Image.pvr
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E copy /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Image.pvr /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Image.pvr

bin/Assets_PointLighting/Star-4bpp.pvr: OpenGLES/05_PointLighting/Star-4bpp.pvr
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "PowerVR_SDK_Practicals: Copying /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Star-4bpp.pvr to /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Star-4bpp.pvr"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E remove -f /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Star-4bpp.pvr
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E copy /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Star-4bpp.pvr /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/Star-4bpp.pvr

bin/Assets_PointLighting/FragShader.fsh: OpenGLES/05_PointLighting/FragShader.fsh
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "PowerVR_SDK_Practicals: Copying /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/FragShader.fsh to /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/FragShader.fsh"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E remove -f /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/FragShader.fsh
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E copy /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/FragShader.fsh /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/FragShader.fsh

bin/Assets_PointLighting/VertShader.vsh: OpenGLES/05_PointLighting/VertShader.vsh
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "PowerVR_SDK_Practicals: Copying /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/VertShader.vsh to /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/VertShader.vsh"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E remove -f /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/VertShader.vsh
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/cmake -E copy /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/VertShader.vsh /home/wafer/Native_SDK/Intro_Mobile_Graphics/bin/Assets_PointLighting/VertShader.vsh

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/flags.make
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o: OpenGLES/05_PointLighting/OpenGLESPointLighting.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o -c /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/OpenGLESPointLighting.cpp

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.i"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/OpenGLESPointLighting.cpp > CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.i

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.s"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/OpenGLESPointLighting.cpp -o CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.s

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.o: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/flags.make
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.o: OpenGLES/05_PointLighting/Triangle.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.o"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/PointLighting.dir/Triangle.cpp.o -c /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Triangle.cpp

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/PointLighting.dir/Triangle.cpp.i"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Triangle.cpp > CMakeFiles/PointLighting.dir/Triangle.cpp.i

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/PointLighting.dir/Triangle.cpp.s"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/Triangle.cpp -o CMakeFiles/PointLighting.dir/Triangle.cpp.s

# Object files for target PointLighting
PointLighting_OBJECTS = \
"CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o" \
"CMakeFiles/PointLighting.dir/Triangle.cpp.o"

# External object files for target PointLighting
PointLighting_EXTERNAL_OBJECTS =

bin/PointLighting: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/OpenGLESPointLighting.cpp.o
bin/PointLighting: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/Triangle.cpp.o
bin/PointLighting: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/build.make
bin/PointLighting: sdk/framework/PVRShell/libPVRShell.a
bin/PointLighting: sdk/framework/PVRUtils/OpenGLES/libPVRUtilsGles.a
bin/PointLighting: /usr/lib/x86_64-linux-gnu/libX11.so
bin/PointLighting: sdk/framework/PVRAssets/libPVRAssets.a
bin/PointLighting: sdk/framework/PVRCore/libPVRCore.a
bin/PointLighting: sdk/external/pugixml/build/libpugixml.a
bin/PointLighting: OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/wafer/Native_SDK/Intro_Mobile_Graphics/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Linking CXX executable ../../bin/PointLighting"
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/PointLighting.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/build: bin/PointLighting

.PHONY : OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/build

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/clean:
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting && $(CMAKE_COMMAND) -P CMakeFiles/PointLighting.dir/cmake_clean.cmake
.PHONY : OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/clean

OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend: bin/Assets_PointLighting/Image.pvr
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend: bin/Assets_PointLighting/Star-4bpp.pvr
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend: bin/Assets_PointLighting/FragShader.fsh
OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend: bin/Assets_PointLighting/VertShader.vsh
	cd /home/wafer/Native_SDK/Intro_Mobile_Graphics && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/wafer/Native_SDK/Intro_Mobile_Graphics /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting /home/wafer/Native_SDK/Intro_Mobile_Graphics /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : OpenGLES/05_PointLighting/CMakeFiles/PointLighting.dir/depend

