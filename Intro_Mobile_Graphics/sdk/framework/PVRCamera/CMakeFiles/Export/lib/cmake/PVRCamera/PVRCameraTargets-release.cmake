#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "PVRCamera" for configuration "Release"
set_property(TARGET PVRCamera APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(PVRCamera PROPERTIES
  IMPORTED_LINK_INTERFACE_LANGUAGES_RELEASE "CXX"
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libPVRCamera.a"
  )

list(APPEND _IMPORT_CHECK_TARGETS PVRCamera )
list(APPEND _IMPORT_CHECK_FILES_FOR_PVRCamera "${_IMPORT_PREFIX}/lib/libPVRCamera.a" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
