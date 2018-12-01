# Install script for directory: /mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so"
         RPATH "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libtreeler/libtreeler.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so"
         OLD_RPATH ":::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libtreeler.so")
    endif()
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/base" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/windll.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/treeler.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/exception.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/dataset.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/example.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/fidx.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/feature-idx-v0.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/feature-vector.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/label.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/parameters.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/base-parameters.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/sparse-parameters.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/scores.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/wf-scores.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/oracle-scores.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/score-dumper.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/basic-sentence.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/sentence.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/token.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/base/dictionary.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/class" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/class/class-basic.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/class/fgen-class.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/class/io-class.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/class/model-mc.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/control" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/control.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/trainer.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/forall.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/factory-base.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/factory-scores.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/factory-dep.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/factory-tag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/factory-ioconll.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/models.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/control/model-selector.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/dep" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/dep.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/dep-symbols.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/pos-symbols.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/dep-tree.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/dep-eval.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-dep-v1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/ftemplates-dep1-v1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-basic-dep1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-basic-dep1.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-basic-dep2.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-basic-dep2.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-dep-v0.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-ftemplates-dep1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-ftemplates-dep1.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-ftemplates-dep2.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/fgen-ftemplate-types.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/parser-projdep1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/parser-projdep1.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/parser-projdep2.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/parser-projdep2.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/part-dep1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/part-dep2.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/part-dep2-index.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/dependency_parser.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/dep/score-dumper.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/io" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/io-basic.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/conllstream.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/io-conll.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/io-sentence.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/io-dep.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/io/io-fvec.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/algo" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/decoder.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/learn-utils.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/learn-utils.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/perceptron.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/perceptron.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/objectives.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/algo/sgd-trainer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/tag" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/tag-eval.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/fgen-tag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/ftemplates-tag-v1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/fgen-ttag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/io-tag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/io-ttag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/part-tag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/tag.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/tag-symbols.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/tag-seq.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/tuple-seq.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/tag/viterbi.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/util" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/char-utils.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/math-utils.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/options.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/simple-hash-table.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/simple-hash-table.tcc"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/util/timer.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/treeler/srl" TYPE FILE FILES
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/srl.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/sentence.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/paths-container.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/part-srl0.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/simple-parser.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/io.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/fgen-srl-v1.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/fgen-srl-types.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/ftemplates-srl.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/fidx-path.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/srl-eval.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/factory-srl.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/paths-defs.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/srl_parser.h"
    "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/src/libtreeler/treeler/srl/scorers.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/build/src/libtreeler/main/cmake_install.cmake")

endif()

