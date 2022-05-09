cmake_minimum_required(VERSION 3.3)

include(ExternalProject)

project(glslang-download NONE)

# Setup the ExternalProject_Add call
ExternalProject_Add(external_glslang
  PREFIX				"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glslang/download"
  SOURCE_DIR 			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glslang/src"
  UPDATE_COMMAND 		""
  URL					"https://github.com/KhronosGroup/glslang/archive/11.2.0.tar.gz"
  URL_MD5				"13d32fb1824fad7dda970e48f2c1c6c9"
  DOWNLOAD_DIR			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glslang/downloads/glslang_downloads"
  DOWNLOAD_NAME			"glslang-11.2.0.tar.gz"
  CONFIGURE_COMMAND 	""
  BUILD_COMMAND 		""
  INSTALL_COMMAND 		""
  TEST_COMMAND 			""
  BUILD_BYPRODUCTS 		"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glslang/src/CMakeLists.txt"
)
