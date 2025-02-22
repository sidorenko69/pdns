# - Config file for the libtins package
# It defines the following variables
#  LIBTINS_INCLUDE_DIRS - include directories for libtins
#  LIBTINS_LIBRARIES    - libraries to link against

# Compute paths
get_filename_component(LIBTINS_CMAKE_DIR "${CMAKE_CURRENT_LIST_FILE}" PATH)
set(LIBTINS_INCLUDE_DIRS "/home/user/CLionProjects/pdns/cmake-build-debug/libtins/src/libtins/include")

# Our library dependencies (contains definitions for IMPORTED targets)
if(NOT TARGET libtins AND NOT LIBTINS_BINARY_DIR)
    include("${LIBTINS_CMAKE_DIR}/libtinsTargets.cmake")
endif()

# These are IMPORTED targets created by libtinsTargets.cmake
set(LIBTINS_LIBRARIES tins)
