cmake_minimum_required(VERSION 3.3)
project(PointLighting_EX3_COMPLETED)

# Include a set of reusable functions specific for the examples
include("${CMAKE_CURRENT_LIST_DIR}/../../../examples/ExampleFunctions.cmake")

# CMAKE_MODULE_PATH is used by find_package
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/../../../cmake/modules" CACHE INTERNAL "")

if(PVR_PREBUILT_DEPENDENCIES)
	find_package(PVRShell REQUIRED MODULE)
	find_package(PVRUtilsGles REQUIRED MODULE)
endif()

# set the build outout to the location specified by CMake
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
# OR
# set the build outpout to the local location of the Project
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT PointLighting_EX3_COMPLETED)

set(SRC_FILES
	OpenGLESPointLighting.cpp
	Triangle.h
	Triangle.cpp
	)

set(ASSET_FOLDER ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Assets_PointLighting_EX3_COMPLETED)

# Adds an executable (or ndk library for Android) and necessary files like plists for Mac/iOS etc.
add_platform_specific_executable(PointLighting_EX3_COMPLETED ${SRC_FILES})

#################################### ASSET FILES ##########################################
# For platforms supporting it, will be packaged with the executable for runtime use.
# Will be accessible from the app with their "relative path". One call per base path

### Textures, scene files, generic resources... ###
add_assets_to_target(PointLighting_EX3_COMPLETED
	SOURCE_GROUP "assets" 
	ASSET_FOLDER ${ASSET_FOLDER} 
	BASE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/
	FILE_LIST 
		Image.pvr
		Star-4bpp.pvr
	)

### Textural shaders (OpenGL ES) ###
add_assets_to_target(PointLighting_EX3_COMPLETED 
	SOURCE_GROUP "shaders" 
	ASSET_FOLDER ${ASSET_FOLDER} 
	BASE_PATH ${CMAKE_CURRENT_SOURCE_DIR}/
	FILE_LIST 
		FragShader.fsh
		VertShader.vsh
	)

# Create and adds a Windows resource file (Resources.rc) with all the assets that have been added to the target with the previous functions
add_assets_resource_file(PointLighting_EX3_COMPLETED)
###########################################################################################

# Apply SDK example specific compile and linker options
apply_example_compile_options_to_target(PointLighting_EX3_COMPLETED)

target_link_libraries(PointLighting_EX3_COMPLETED
	PVRShell
	PVRUtilsGles
)