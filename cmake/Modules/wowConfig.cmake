INCLUDE(FindPkgConfig)
PKG_CHECK_MODULES(PC_WOW wow)

FIND_PATH(
    WOW_INCLUDE_DIRS
    NAMES wow/api.h
    HINTS $ENV{WOW_DIR}/include
        ${PC_WOW_INCLUDEDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/include
          /usr/local/include
          /usr/include
)

FIND_LIBRARY(
    WOW_LIBRARIES
    NAMES gnuradio-wow
    HINTS $ENV{WOW_DIR}/lib
        ${PC_WOW_LIBDIR}
    PATHS ${CMAKE_INSTALL_PREFIX}/lib
          ${CMAKE_INSTALL_PREFIX}/lib64
          /usr/local/lib
          /usr/local/lib64
          /usr/lib
          /usr/lib64
)

INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(WOW DEFAULT_MSG WOW_LIBRARIES WOW_INCLUDE_DIRS)
MARK_AS_ADVANCED(WOW_LIBRARIES WOW_INCLUDE_DIRS)

