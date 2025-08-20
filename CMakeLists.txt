
cmake_minimum_required(VERSION 3.16)
project(MyProgram LANGUAGES CXX) 

include(ExternalProject)

ExternalProject_Add(Arrow
    URL "https://www.apache.org/dist/arrow/arrow-21.0.0/apache-arrow-21.0.0.tar.gz"
    SOURCE_SUBDIR cpp
    CMAKE_ARGS "-Dxsimd_SOURCE=BUNDLED"
)

file(GLOB SOURCES 
*.h
*.cpp
)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(MyProgram main.cpp)


