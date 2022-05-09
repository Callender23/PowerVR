cmake_minimum_required(VERSION 3.3)

include(ExternalProject)

project(pugixml-download NONE)

# Setup the ExternalProject_Add call
ExternalProject_Add(external_pugixml
  PREFIX				"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/pugixml/download"
  SOURCE_DIR 			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/pugixml/src"
  UPDATE_COMMAND 		""
  URL					"https://github.com/zeux/pugixml/releases/download/v1.10/pugixml-1.10.tar.gz"
  URL_MD5				"f97237e9908201c6d8536210747b66af"
  DOWNLOAD_DIR			"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/pugixml/downloads/pugixml_downloads"
  DOWNLOAD_NAME			"pugixml-1.10.tar.gz"
  CONFIGURE_COMMAND 	""
  BUILD_COMMAND 		""
  INSTALL_COMMAND 		""
  TEST_COMMAND 			""
  BUILD_BYPRODUCTS 		"/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/external/pugixml/src/CMakeLists.txt"
)
