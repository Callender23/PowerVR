# Install script for directory: /home/wafer/Native_SDK/framework/PVRVk

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRVk/libPVRVk.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRVk" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRVk/AccelerationStructureVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ApiObjectsVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/BufferVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/CommandBufferVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/CommandPoolVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ComputePipelineVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/CommonHelpers.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DebugReportCallbackVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DebugUtilsMessengerVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DebugUtilsVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DescriptorSetVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DeviceMemoryVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DeviceVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DisplayModeVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/DisplayVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/EventVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ExtensionsVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/FenceVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ForwardDecObjectsVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/FramebufferVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/GraphicsPipelineVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/HeadersVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ImageVk.cpp"
    "/home/wafer/Native_SDK/framework/PVRVk/ImageVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/InstanceVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/LayersVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/MemoryBarrierVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PhysicalDeviceVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PipelineCacheVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PipelineConfigVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PipelineLayoutVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PipelineVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PopulateCreateInfoVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PVRVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/pvrvk_vulkan_wrapper.h"
    "/home/wafer/Native_SDK/framework/PVRVk/PVRVkObjectBaseVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/QueryPoolVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/QueueVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/RaytracingPipelineVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/RenderPassVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/SamplerVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/SemaphoreVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/ShaderModuleVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/SurfaceVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/SwapchainVk.h"
    "/home/wafer/Native_SDK/framework/PVRVk/TypesVk.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/include" TYPE FILE OPTIONAL FILES
    "/home/wafer/Native_SDK/framework/PVRVk/../../include/pvr_openlib.h"
    "/home/wafer/Native_SDK/framework/PVRVk/../../include/vk_bindings.h"
    "/home/wafer/Native_SDK/framework/PVRVk/../../include/vk_bindings_helper.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/include" TYPE DIRECTORY OPTIONAL FILES "/home/wafer/Native_SDK/framework/PVRVk/../../include/vulkan")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk/PVRVkTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk/PVRVkTargets.cmake"
         "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRVk/CMakeFiles/Export/lib/cmake/PVRVk/PVRVkTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk/PVRVkTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk/PVRVkTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRVk/CMakeFiles/Export/lib/cmake/PVRVk/PVRVkTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRVk/CMakeFiles/Export/lib/cmake/PVRVk/PVRVkTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRVk" TYPE FILE OPTIONAL FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRVk/PVRVk/PVRVkTargets.cmake")
endif()

