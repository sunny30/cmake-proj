# Install script for directory: /Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set path to fallback-tool for dependency-resolution.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arrow/testing" TYPE FILE FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/async_test_util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/builder.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/executor_util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/extension_type.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/fixed_width_test_util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/future_util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/generator.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/gtest_compat.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/gtest_util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/matchers.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/math.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/process.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/random.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/uniform_real.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/testing/visibility.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/testing/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
