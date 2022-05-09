#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PVRVk" for configuration "Release"
set_property(TARGET PVRVk APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(PVRVk PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libPVRVk.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS PVRVk )
list(APPEND _IMPORT_CHECK_FILES_FOR_PVRVk "${_IMPORT_PREFIX}/lib/libPVRVk.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
