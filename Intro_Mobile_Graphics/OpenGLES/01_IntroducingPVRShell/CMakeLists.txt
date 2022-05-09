cmake_minimum_required(VERSION 3.3)
project(IntroducingPVRShell)

# Include a set of reusable functions specific for the examples
include("${CMAKE_CURRENT_LIST_DIR}/../../../examples/ExampleFunctions.cmake")

# CMAKE_MODULE_PATH is used by find_package
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_LIST_DIR}/../../../cmake/modules" CACHE INTERNAL "")

if(PVR_PREBUILT_DEPENDENCIES)
	find_package(PVRShell REQUIRED MODULE)
endif()

# set the build outout to the location specified by CMake
set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${CMAKE_BINARY_DIR}/bin")
# OR
# set the build outpout to the local location of the Project
# set(CMAKE_RUNTIME_OUTPUT_DIRECTORY "${PROJECT_BINARY_DIR}/bin")

set_property(DIRECTORY ${CMAKE_CURRENT_SOURCE_DIR} PROPERTY VS_STARTUP_PROJECT IntroducingPVRShell)

set(ASSET_FOLDER ${CMAKE_RUNTIME_OUTPUT_DIRECTORY}/Assets_IntroducingPVRShell)

set(SRC_FILES 
	${CMAKE_CURRENT_LIST_DIR}/../../../include/DynamicEgl.h
	${CMAKE_CURRENT_LIST_DIR}/../../../include/DynamicGles.h
	${CMAKE_CURRENT_LIST_DIR}/EglContext.h 
	${CMAKE_CURRENT_LIST_DIR}/OpenGLESIntroducingPVRShell.cpp)

if(IOS)
	list(APPEND SRC_FILES ${CMAKE_CURRENT_LIST_DIR}/EaglContext.mm)
else()
	list(APPEND SRC_FILES ${CMAKE_CURRENT_LIST_DIR}/EglContext.cpp)
endif()

add_platform_specific_executable(IntroducingPVRShell ${SRC_FILES})


if(ANDROID)
elseif(APPLE)
	if (IOS)
		find_library(lib-gles OpenGLES)
		list(APPEND IntroducingPVRShell_LINK_LIBS ${lib-gles})
	endif()
elseif(UNIX)
	if(PVR_WINDOW_SYSTEM AND ("${PVR_WINDOW_SYSTEM}" STREQUAL Wayland))
		list(APPEND IntroducingPVRShell_LINK_LIBS ${WAYLAND_EGL_LIBRARIES})
		list(APPEND IntroducingPVRShell_INCLUDE_DIRECTORIES ${WAYLAND_EGL_INCLUDE_DIR})
	endif()
endif()

target_include_directories(IntroducingPVRShell 
	PUBLIC 
		${CMAKE_CURRENT_LIST_DIR}/../../../include/
		${IntroducingPVRShell_INCLUDE_DIRECTORIES})

# Apply SDK specific compile and linker options
apply_example_compile_options_to_target(IntroducingPVRShell)

target_link_libraries(IntroducingPVRShell 
	PVRShell
	${IntroducingPVRShell_LINK_LIBS}
)

