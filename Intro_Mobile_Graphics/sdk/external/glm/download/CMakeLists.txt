cmake_minimum_required(VERSION 3.3)

include(ExternalProject)

project(glm-download NONE)

# Setup the ExternalProject_Add call
ExternalProject_Add(external_glm
  PREFIX				"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glm/download"
  SOURCE_DIR 			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glm/src"
  UPDATE_COMMAND 		""
  URL					"https://github.com/g-truc/glm/archive/0.9.9.4.tar.gz"
  URL_MD5				"e60bcfb57c53b03e55cb4fc2f2cc58e6"
  DOWNLOAD_DIR			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glm/downloads/glm_downloads"
  DOWNLOAD_NAME			"glm-0.9.9.4.tar.gz"
  CONFIGURE_COMMAND 	""
  BUILD_COMMAND 		""
  INSTALL_COMMAND 		""
  TEST_COMMAND 			""
  BUILD_BYPRODUCTS 		"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/glm/src/CMakeLists.txt"
)
