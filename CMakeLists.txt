cmake_minimum_required(VERSION 3.3)

find_package(OpenGL REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

# Including GLFW
add_subdirectory(glfw)
include_directories(glfw/include)

# Including GLAD
include_directories(glad/include)

#01: window
set(SOURCE_FILES01 src/01-window/main.cpp glad/src/glad.c)
add_executable(01-window ${SOURCE_FILES01})
target_link_libraries(01-window glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY})