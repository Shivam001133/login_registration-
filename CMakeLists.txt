cmake_minimum_required(VERSION 3.10)

project(LoginRegistration)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

set(SRC_DIR ${CMAKE_SOURCE_DIR}/src)
set(MAIN_FILE ${CMAKE_SOURCE_DIR}/main.cpp)

file(GLOB_RECURSE SRC_FILES "${SRC_DIR}/*.cpp")

set(SOURCES ${MAIN_FILE} ${SRC_FILES})

message(STATUS "Source files: ${SOURCES}")

add_executable(login_registration ${SOURCES})

find_library(MARIADB_LIB mariadb REQUIRED)
target_link_libraries(login_registration ${MARIADB_LIB})
