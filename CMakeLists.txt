cmake_minimum_required(VERSION 3.3)

find_package(OpenGL REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++17")

# Including GLFW
add_subdirectory(glfw)
include_directories(glfw/include)

# Including GLAD
include_directories(glad/include)

#LearnOpenGL tutorial utilities
include_directories(src/common/include)

#01: window
set(SOURCE_FILES01 src/01-window/main.cpp glad/src/glad.c)
add_executable(01-window ${SOURCE_FILES01})
target_link_libraries(01-window glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY})

#02: triangle
set(SOURCE_FILES02 src/02-triangle/main.cpp glad/src/glad.c)
add_executable(02-triangle ${SOURCE_FILES02})
target_link_libraries(02-triangle glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY})

#03: shaders
set(SOURCE_FILES03 src/03-shaders/main.cpp glad/src/glad.c)
add_executable(03-shaders ${SOURCE_FILES03})
target_link_libraries(03-shaders glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY})

#Move actual shaders to cmake-build / cmake-build-debug directory when compiling (Clion why)
set(PROJECT03_SOURCE "${CMAKE_SOURCE_DIR}/src/03-shaders")
set(BUILD_DESTINATION "${CMAKE_BINARY_DIR}")
file(COPY "${PROJECT03_SOURCE}/fragmentshader.frag" DESTINATION ${BUILD_DESTINATION})
file(COPY "${PROJECT03_SOURCE}/vertexshader.vert" DESTINATION ${BUILD_DESTINATION})
file(COPY "${PROJECT03_SOURCE}/upside-down.vert" DESTINATION ${BUILD_DESTINATION})
file(COPY "${PROJECT03_SOURCE}/offset.vert" DESTINATION ${BUILD_DESTINATION})
file(COPY "${PROJECT03_SOURCE}/vertexOutColor.vert" DESTINATION ${BUILD_DESTINATION})
file(COPY "${PROJECT03_SOURCE}/fragmentInVertex.frag" DESTINATION ${BUILD_DESTINATION})

#04: textures
set(SOURCE_FILES04 src/04-textures/main.cpp glad/src/glad.c)
add_executable(04-textures ${SOURCE_FILES04})
target_link_libraries(04-textures glfw ${GLFW_LIBRARIES} ${OPENGL_LIBRARY})
set(PROJECT04_SOURCE "${CMAKE_SOURCE_DIR}/src/04-textures")
set(BUILD_DESTINATION "${CMAKE_BINARY_DIR}")