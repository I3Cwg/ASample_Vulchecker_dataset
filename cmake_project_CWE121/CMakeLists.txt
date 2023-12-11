cmake_minimum_required(VERSION 3.12)
project(demo)

include_directories(include)
set(SOURCES
    src/good.cpp

)
foreach(SOURCE ${SOURCES})
    # Tạo tên mục tiêu từ tên tệp .cpp
    get_filename_component(TARGET_NAME ${SOURCE} NAME_WE)
    add_executable(${TARGET_NAME} ${SOURCE})
endforeach()
add_custom_target(check ${CMAKE_CTEST_COMMAND} -V)
