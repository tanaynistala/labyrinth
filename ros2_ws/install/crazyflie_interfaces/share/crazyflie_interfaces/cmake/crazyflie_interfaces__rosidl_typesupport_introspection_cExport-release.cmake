#----------------------------------------------------------------
# Generated CMake target import file for configuration "Release".
#----------------------------------------------------------------

# Commands may need to know the format version.
set(CMAKE_IMPORT_FILE_VERSION 1)

# Import target "crazyflie_interfaces::crazyflie_interfaces__rosidl_typesupport_introspection_c" for configuration "Release"
set_property(TARGET crazyflie_interfaces::crazyflie_interfaces__rosidl_typesupport_introspection_c APPEND PROPERTY IMPORTED_CONFIGURATIONS RELEASE)
set_target_properties(crazyflie_interfaces::crazyflie_interfaces__rosidl_typesupport_introspection_c PROPERTIES
  IMPORTED_LOCATION_RELEASE "${_IMPORT_PREFIX}/lib/libcrazyflie_interfaces__rosidl_typesupport_introspection_c.dylib"
  IMPORTED_SONAME_RELEASE "@rpath/libcrazyflie_interfaces__rosidl_typesupport_introspection_c.dylib"
  )

list(APPEND _cmake_import_check_targets crazyflie_interfaces::crazyflie_interfaces__rosidl_typesupport_introspection_c )
list(APPEND _cmake_import_check_files_for_crazyflie_interfaces::crazyflie_interfaces__rosidl_typesupport_introspection_c "${_IMPORT_PREFIX}/lib/libcrazyflie_interfaces__rosidl_typesupport_introspection_c.dylib" )

# Commands beyond this point should not need to know the version.
set(CMAKE_IMPORT_FILE_VERSION)
