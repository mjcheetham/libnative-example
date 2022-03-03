cmake_minimum_required(VERSION 3.0)

set (PROJECT_VERSION "1.0")
project(native VERSION ${PROJECT_VERSION})

# Ignored by MSVC
set(CMAKE_LIBRARY_OUTPUT_DIRECTORY ${CMAKE_BINARY_DIR}/lib/native)

add_library(native SHARED libnative.c)

set_target_properties(
    native PROPERTIES
    VERSION ${PROJECT_VERSION}
)
