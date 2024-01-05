cmake_minimum_required(VERSION 3.14)
project(TemplateBook)

include_directories(include)


# Book

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)
set(CMAKE_CXX_STANDARD 20)

set(BOOK_SOURCE)
set(BOOK_HEADER)


list(APPEND BOOK_SOURCE
	)

list(APPEND BOOK_HEADER
	src/dimensionsTypes.hpp
	src/quantity.hpp
	)

set(ALL_BOOK_FILES ${BOOK_HEADER})

add_library(BookLib INTERFACE ${ALL_BOOK_FILES})
# add_executable(program main.cpp)
# target_link_libraries(program BookLib)


# Tests

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

enable_testing()

set(TESTS_SOURCE)

list(APPEND TESTS_SOURCE
	tests/literals.cpp
	)

add_executable(launchTest ${TESTS_SOURCE})
target_link_libraries(launchTest BookLib GTest::gtest_main)
target_include_directories(launchTest PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
