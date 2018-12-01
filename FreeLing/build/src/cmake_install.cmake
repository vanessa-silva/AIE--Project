# Install script for directory: /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/include/" FILES_MATCHING REGEX "/[^/]*\\.h$" REGEX "/coref\\.h$" EXCLUDE REGEX "/coref\\_fex\\.h$" EXCLUDE)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libfoma/cmake_install.cmake")
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libtreeler/cmake_install.cmake")
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libfreeling/cmake_install.cmake")
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/main/cmake_install.cmake")
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/cmake_install.cmake")

endif()

