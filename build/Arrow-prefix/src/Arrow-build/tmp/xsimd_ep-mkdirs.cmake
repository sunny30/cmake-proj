# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file LICENSE.rst or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION ${CMAKE_VERSION}) # this file comes with cmake

# If CMAKE_DISABLE_SOURCE_CHANGES is set to true and the source directory is an
# existing directory in our source tree, calling file(MAKE_DIRECTORY) on it
# would cause a fatal error, even though it would be a no-op.
if(NOT EXISTS "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep")
  file(MAKE_DIRECTORY "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep")
endif()
file(MAKE_DIRECTORY
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep-build"
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build"
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/tmp"
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep-stamp"
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src"
  "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/Users/sharadsingh/Dev/cpp_proj/build/Arrow-prefix/src/Arrow-build/src/xsimd_ep-stamp${cfgdir}") # cfgdir has leading slash
endif()
