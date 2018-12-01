# Install script for directory: /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/APIs/python3

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so"
         RPATH "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3" TYPE SHARED_LIBRARY FILES "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/APIs/python3/_pyfreeling.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so"
         OLD_RPATH "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libfreeling:/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libfoma:/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libtreeler:"
         NEW_RPATH "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3/_pyfreeling.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/freeling/APIs/python3" TYPE PROGRAM FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/APIs/python3/pyfreeling.py"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/APIs/python3/sample.py"
    )
endif()

