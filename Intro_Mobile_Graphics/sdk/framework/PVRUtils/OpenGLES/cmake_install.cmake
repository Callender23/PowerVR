# Install script for directory: /home/wafer/Native_SDK/framework/PVRUtils/OpenGLES

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wafer/Native_SDK/Intro_Mobile_Graphics/../install/")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/OpenGLES/libPVRUtilsGles.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRUtils" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../ArialBoldFont.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../MultiObject.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../ImaginationLogo.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../PBRUtils.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../PVRUtilsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../PVRUtilsTypes.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../StructuredMemory.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRUtils/OpenGLES" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../../../include/DynamicEgl.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../../../include/DynamicGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/BindingsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/ConvertToGlesTypes.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/ErrorsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/HelperGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/ModelGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/PBRUtilsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/ShaderUtilsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/SpriteGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/TextureUtilsGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/UIRendererGles.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/UIRendererShaders_ES.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRUtils/EGL" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../EGL/EglPlatformContext.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/OpenGLES/../EGL/EglPlatformHandles.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets.cmake"
         "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/OpenGLES/CMakeFiles/Export/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/OpenGLES/CMakeFiles/Export/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/OpenGLES/CMakeFiles/Export/lib/cmake/PVRUtilsGles/PVRUtilsGlesTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsGles" TYPE FILE OPTIONAL FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/OpenGLES/PVRUtilsGles/PVRUtilsGlesTargets.cmake")
endif()

