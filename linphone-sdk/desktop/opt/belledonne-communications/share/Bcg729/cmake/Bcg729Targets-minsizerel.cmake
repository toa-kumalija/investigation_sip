#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "bcg729" for configuration "MinSizeRel"
set_property(TARGET bcg729 APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(bcg729 PROPERTIES
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/libbcg729.so.0"
  IMPORTED_SONAME_MINSIZEREL "libbcg729.so.0"
  )

list(APPEND _IMPORT_CHECK_TARGETS bcg729 )
list(APPEND _IMPORT_CHECK_FILES_FOR_bcg729 "${_IMPORT_PREFIX}/lib/libbcg729.so.0" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
