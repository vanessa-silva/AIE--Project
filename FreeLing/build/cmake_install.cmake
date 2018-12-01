# Install script for directory: /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/freeling" TYPE DIRECTORY FILES "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/" REGEX "/dictionary$" EXCLUDE REGEX "/parameters\\.[^/]*\\.gz\\.[^/]*$" EXCLUDE REGEX "/Makefile[^/]*$" EXCLUDE)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating as dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/as/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/as/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/as/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating ca dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ca/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating ca/balear dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ca/balear)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/balear/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/balear/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/balear/remove OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ca/balear/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating ca/valencia dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ca/valencia)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/valencia/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/valencia/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ca/valencia/remove OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ca/valencia/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating cs dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/cs/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/cs/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/cs/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating cy dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/cy/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/cy/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/cy/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating de dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/de/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/de/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/de/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating en dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/en/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/en/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/en/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating en phonetic dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/dicc2phon /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/en/dicc.src /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/en/alternatives-phon.dat)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/gz-cat /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/en/dep_treeler/srl/parameters.047.gz.aa /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/en/dep_treeler/srl/parameters.047.gz)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating es dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating es phonetic dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/dicc2phon /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/dicc.src /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/alternatives-phon.dat)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating es/es-old dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-old)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-old/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-old/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-old/remove OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-old/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating es/es-ar dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-ar)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-ar/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-ar/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-ar/remove OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-ar/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "-- Creating es/es-cl dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(MAKE_DIRECTORY /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-cl)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-cl/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-cl/dictionary/entries /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-cl/remove OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-cl/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/fusion-mw /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/es-cl/locucions.dat /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/es/locucions.dat OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/es/es-cl/locucions.dat)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating fr dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/fr/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/fr/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/fr/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating gl dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/gl/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/gl/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/gl/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating it dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/it/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/it/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/it/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating nb dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/nb/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/nb/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/nb/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating pt dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/pt/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/pt/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/pt/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating ru dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ru/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/ru/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/ru/dicc.src)
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  message(STATUS "Creating sl dictionary...")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/utilities/build-dict /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/sl/dictionary/header /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/data/sl/dictionary/entries  OUTPUT_FILE /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/sl/dicc.src)
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/cmake_install.cmake")
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/APIs/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
