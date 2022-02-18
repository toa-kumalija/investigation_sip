#----------------------------------------------------------------
# Generated CMake target import file for configuration "MinSizeRel".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "linphone" for configuration "MinSizeRel"
set_property(TARGET linphone APPEND PROPERTY IMPORTED_CONFIGURATIONS MINSIZEREL)
set_target_properties(linphone PROPERTIES
  IMPORTED_LINK_DEPENDENT_LIBRARIES_MINSIZEREL "bctoolbox;bellesip;belr;mediastreamer;ortp"
  IMPORTED_LOCATION_MINSIZEREL "${_IMPORT_PREFIX}/lib/liblinphone.so.10"
  IMPORTED_SONAME_MINSIZEREL "liblinphone.so.10"
  )

list(APPEND _IMPORT_CHECK_TARGETS linphone )
list(APPEND _IMPORT_CHECK_FILES_FOR_linphone "${_IMPORT_PREFIX}/lib/liblinphone.so.10" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
