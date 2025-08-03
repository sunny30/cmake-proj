
cmake_minimum_required(VERSION 3.16)
project(MyProgram LANGUAGES CXX) 



file(GLOB SOURCES 
*.h
*.cpp
)
set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_executable(MyProgram main.cpp)

