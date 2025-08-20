# Install script for directory: /Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arrow/util" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/util/config.h")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/release/libarrow_bundled_dependencies.a")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/release/libarrow.2100.0.0.dylib"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/release/libarrow.2100.dylib"
    )
  foreach(file
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libarrow.2100.0.0.dylib"
      "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libarrow.2100.dylib"
      )
    if(EXISTS "${file}" AND
       NOT IS_SYMLINK "${file}")
      if(CMAKE_INSTALL_DO_STRIP)
        execute_process(COMMAND "/usr/bin/strip" -x "${file}")
      endif()
    endif()
  endforeach()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE SHARED_LIBRARY FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/release/libarrow.dylib")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/release/libarrow.a")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libarrow.a" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libarrow.a")
    execute_process(COMMAND "/usr/bin/ranlib" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/libarrow.a")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow" TYPE FILE FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/ArrowConfig.cmake"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/ArrowConfigVersion.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow/ArrowTargets.cmake")
    file(DIFFERENT _cmake_export_file_changed FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow/ArrowTargets.cmake"
         "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/CMakeFiles/Export/817832ed7b630b992c3753a0fa15add4/ArrowTargets.cmake")
    if(_cmake_export_file_changed)
      file(GLOB _cmake_old_config_files "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow/ArrowTargets-*.cmake")
      if(_cmake_old_config_files)
        string(REPLACE ";" ", " _cmake_old_config_files_text "${_cmake_old_config_files}")
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow/ArrowTargets.cmake\" will be replaced.  Removing files [${_cmake_old_config_files_text}].")
        unset(_cmake_old_config_files_text)
        file(REMOVE ${_cmake_old_config_files})
      endif()
      unset(_cmake_old_config_files)
    endif()
    unset(_cmake_export_file_changed)
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/CMakeFiles/Export/817832ed7b630b992c3753a0fa15add4/ArrowTargets.cmake")
  if(CMAKE_INSTALL_CONFIG_NAME MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/CMakeFiles/Export/817832ed7b630b992c3753a0fa15add4/ArrowTargets-release.cmake")
  endif()
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/Release/arrow.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gdb/auto-load/usr/local/lib" TYPE FILE RENAME "libarrow.2100.0.0.dylib-gdb.py" FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/libarrow_gdb.py")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/arrow" TYPE FILE FILES
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/api.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/array.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/buffer.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/buffer_builder.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/builder.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/chunk_resolver.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/chunked_array.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/compare.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/config.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/datum.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/device.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/device_allocation_type_set.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/extension_type.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/memory_pool.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/memory_pool_test.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/pretty_print.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/record_batch.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/result.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/scalar.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/sparse_tensor.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/status.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/stl.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/stl_allocator.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/stl_iterator.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/table.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/table_builder.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/tensor.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/type.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/type_fwd.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/type_traits.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visit_array_inline.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visit_data_inline.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visit_scalar_inline.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visit_type_inline.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visitor.h"
    "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/visitor_generate.h"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/ArrowOptions.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/Arrow" TYPE FILE FILES "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow/cpp/src/arrow/arrow-config.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/testing/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/array/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/c/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/compute/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/extension/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/io/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/tensor/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/util/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/vendored/cmake_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for the subdirectory.
  include("/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/ipc/cmake_install.cmake")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
if(CMAKE_INSTALL_LOCAL_ONLY)
  file(WRITE "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/arrow/install_local_manifest.txt"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
endif()
