
cmake_minimum_required(VERSION 3.10)

project(boost_asio_practice)

set(CMAKE_CXX_STANDARD 17)
SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17 -pthread")

find_package(Boost COMPONENTS system)
if(Boost_FOUND)
    include_directories(${Boost_INCLUDE_DIRS})
    add_executable(boost_asio_practice src/main.cpp src/main.cpp)
    link_directories(boost-asio-practice ${Boost_LIBRARY_DIRS})
    target_link_libraries(boost_asio_practice ${Boost_LIBRARIES})
endif()