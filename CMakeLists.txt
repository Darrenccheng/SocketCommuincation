cmake_minimum_required(VERSION 3.17)
project(SocketCommunication)

set(CMAKE_CXX_STANDARD 11)
#file(GLOB SRC ${CMAKE_CURRENT_SOURCE_DIR}/*.cpp)
set(HOME /home/computer_Study/SocketCommunication)
set(EXECUTABLE_OUTPUT_PATH ${HOME}/bin)

include_directories(${CMAKE_CURRENT_SOURCE_DIR}/threadpool)

add_executable(Socket_Server server_one_thread.cpp threadpool/threadpool.cpp)
add_executable(Socker_Client client_one_thread.cpp)

target_link_libraries(Socket_Server pthread)