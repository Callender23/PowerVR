# Install script for directory: /home/wafer/Native_SDK/framework/PVRUtils/Vulkan

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/Vulkan/libPVRUtilsVk.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRUtils" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../ArialBoldFont.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../MultiObject.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../ImaginationLogo.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../PBRUtils.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../PVRUtilsTypes.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../StructuredMemory.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRUtils/Vulkan" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../ArialBoldFont.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../MultiObject.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../ImaginationLogo.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../PBRUtils.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../PVRUtilsTypes.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../PVRUtilsVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/../StructuredMemory.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/AccelerationStructure.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/AsynchronousVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/ConvertToPVRVkTypes.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/HelperVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/MemoryAllocator.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/PBRUtilsVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/PBRUtilsVertShader.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/PBRUtilsIrradianceFragShader.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/PBRUtilsPrefilteredFragShader.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/ShaderUtilsVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/SpriteVk.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/UIRendererFragShader.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/UIRendererVertShader.h"
    "/home/wafer/Native_SDK/framework/PVRUtils/Vulkan/UIRendererVk.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRUtilsVk" TYPE FILE OPTIONAL FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRUtils/Vulkan/PVRUtilsVk/PVRUtilsVkTargets.cmake")
endif()

