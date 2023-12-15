cmake_minimum_required(VERSION 3.10)
project(Lab4)

set(CMAKE_CXX_STANDARD 11)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wextra -Wall -pedantic")

add_library(calculator STATIC calculator.cpp)

add_executable(main main.cpp)

target_link_libraries(main calculator)
