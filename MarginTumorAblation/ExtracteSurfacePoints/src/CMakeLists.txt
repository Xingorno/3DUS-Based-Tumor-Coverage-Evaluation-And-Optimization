project(ExtractSurfacePoints)

cmake_minimum_required(VERSION 3.2.0)

# C++14 support
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -fopenmp -std=c++14")

# Sources
set (ExtractSurfacePoints_SRC
        "main.cpp"
        )

add_executable(ExtractSurfacePoints ${ExtractSurfacePoints_SRC})

# Bullet includes


set(GTE_ROOT "F:/GeometricTools/GTE/Mathematics/..")
#set(BULLET_SRC_DIR "" CACHE PATH "")
#set(BULLET_LIB_DIR "" CACHE PATH "")
message("Bullet source directory: ${GTE_ROOT}")

include_directories(${GTE_ROOT})

target_link_libraries(ExtractSurfacePoints

    )






