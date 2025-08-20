# Install script for directory: /Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/vendored

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arrow/vendored" TYPE FILE FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/vendored/ProducerConsumerQueue.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/vendored/datetime.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/vendored/strptime.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/vendored/xxhash.h"
    )
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/datetime/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/double-conversion/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/pcg/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/portable-snippets/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/xxhash/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
