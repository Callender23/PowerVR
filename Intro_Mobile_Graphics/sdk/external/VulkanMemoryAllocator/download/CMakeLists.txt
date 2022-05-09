cmake_minimum_required(VERSION 3.3)

include(ExternalProject)

project(VulkanMemoryAllocator-download NONE)

# Setup the ExternalProject_Add call
ExternalProject_Add(external_VulkanMemoryAllocator
  PREFIX				"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/VulkanMemoryAllocator/download"
  SOURCE_DIR 			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/VulkanMemoryAllocator/src"
  UPDATE_COMMAND 		""
  URL					"https://github.com/GPUOpen-LibrariesAndSDKs/VulkanMemoryAllocator/archive/v2.3.0.tar.gz"
  URL_MD5				"1846f2b0f04c485356cd7ce31a02a2be"
  DOWNLOAD_DIR			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/VulkanMemoryAllocator/downloads/VulkanMemoryAllocator_downloads"
  DOWNLOAD_NAME			"VulkanMemoryAllocator-v2.3.0.tar.gz"
  CONFIGURE_COMMAND 	""
  BUILD_COMMAND 		""
  INSTALL_COMMAND 		""
  TEST_COMMAND 			""
  BUILD_BYPRODUCTS 		"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/VulkanMemoryAllocator/src/src/vk_mem_alloc.h"
)
