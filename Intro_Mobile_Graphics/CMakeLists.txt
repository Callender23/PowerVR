cmake_minimum_required(VERSION 3.3)

project(PowerVR_SDK_Practicals)

include(GNUInstallDirs)

# Include a set of reusable functions specific for the examples
include("${CMAKE_CURRENT_LIST_DIR}/../examples/ExampleFunctions.cmake")

# Avoids the SDK being added multiple times
if(TARGET PowerVR_SDK_Practicals)
	return()
endif()
add_library(PowerVR_SDK_Practicals INTERFACE)

# Set PROJECT_ARCH to either 32 or 64 (bits). Used to set the framework folders for Windows.
if("${CMAKE_SIZEOF_VOID_P}" EQUAL "8")
	set(PROJECT_ARCH 64 CACHE INTERNAL "")
else()
	set(PROJECT_ARCH 32 CACHE INTERNAL "")
endif()

# CMAKE_MODULE_PATH is used by find_package
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/../cmake/modules" CACHE INTERNAL "")
# Default to release if the user passes nothing.
if(NOT CMAKE_BUILD_TYPE) 
	message("-DCMAKE_BUILD_TYPE not defined. Assuming Release")
	set(CMAKE_BUILD_TYPE "Release" CACHE INTERNAL "CMAKE_BUILD_TYPE - Specifies the build type on single-configuration generators")
endif()

if(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT)
	set(CMAKE_INSTALL_PREFIX ${CMAKE_CURRENT_LIST_DIR}/../install/${INSTALL_SUFFIX} CACHE INTERNAL "")
	# Ensure other projects don't set CMAKE_INSTALL_PREFIX
	set(CMAKE_INSTALL_PREFIX_INITIALIZED_TO_DEFAULT FALSE)
endif()

set(GLSLANG_VALIDATOR_INSTALL_DIR "GLSLANG_VALIDATOR-NOTFOUND" CACHE PATH "Path to a prebuilt glslangValidator")

if(NOT GLSLANG_VALIDATOR_INSTALL_DIR)
	set(GLSLANG_VALIDATOR_INSTALL_DIR $ENV{GLSLANG_VALIDATOR_INSTALL_DIR})
endif()

if(APPLE AND NOT IOS)
	find_package(MoltenVK)
endif()

if(WIN32)
	set(PVR_VFRAME_LIB_FOLDER "${CMAKE_CURRENT_LIST_DIR}/../lib/Windows_x86_${PROJECT_ARCH}" CACHE INTERNAL "")
elseif(APPLE AND NOT IOS)
	set(PVR_VFRAME_LIB_FOLDER "${CMAKE_CURRENT_LIST_DIR}/../lib/macOS_x86" CACHE INTERNAL "")
elseif(UNIX)
	set(PVR_VFRAME_LIB_FOLDER "${CMAKE_CURRENT_LIST_DIR}/../lib/${CMAKE_SYSTEM_NAME}_${CMAKE_SYSTEM_PROCESSOR}" CACHE INTERNAL "")
endif()


add_subdirectory(../ ${CMAKE_CURRENT_BINARY_DIR}/sdk)

set(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/bin)
set(SDK_ROOT ${CMAKE_CURRENT_LIST_DIR}/../)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${SDK_ROOT}/cmake/modules")  #for find_package


add_subdirectory("${CMAKE_CURRENT_LIST_DIR}/OpenGLES")