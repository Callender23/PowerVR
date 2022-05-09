#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PVRAssets" for configuration "Release"
set_property(TARGET PVRAssets APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(PVRAssets PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libPVRAssets.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS PVRAssets )
list(APPEND _IMPORT_CHECK_FILES_FOR_PVRAssets "${_IMPORT_PREFIX}/lib/libPVRAssets.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
