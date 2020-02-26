cmake_minimum_required(VERSION 3.15)
project(TodoList)

set(CMAKE_CXX_STANDARD 20)

add_executable(TodoList src/main.cpp src/TodoList.cpp src/TodoList.h)