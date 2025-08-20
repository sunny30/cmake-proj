# Install script for directory: /Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arrow/ipc" TYPE FILE FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/api.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/dictionary.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/feather.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/message.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/options.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/reader.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/test_common.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/type_fwd.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/util.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/ipc/writer.h"
    )
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/ipc/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
