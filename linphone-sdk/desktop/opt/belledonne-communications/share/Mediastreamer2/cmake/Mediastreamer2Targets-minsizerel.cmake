#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "mediastreamer" for configuration "MinSizeRel"
set_property(TARGET mediastreamer APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(mediastreamer PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "bctoolbox;ortp;bcg729;bzrtp"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/libmediastreamer.so.11"
  IMPORTED_SONAME_MINSIZEREL "libmediastreamer.so.11"
  )

list(APPEND _IMPORT_CHECK_TARGETS mediastreamer )
list(APPEND _IMPORT_CHECK_FILES_FOR_mediastreamer "${_IMPORT_PREFIX}/lib/libmediastreamer.so.11" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
