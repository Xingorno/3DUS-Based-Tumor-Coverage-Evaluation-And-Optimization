# 3DUS-Based-Tumor-Coverage-Evaluation-And-Optimization

References: 
- [Our previous work about ultrasound simulation](https://github.com/Xingorno/Ultrasound_Simulation_Ray_Tracing)
- [Real-Time GPU-Based Ultrasound Simulation Using Deformable Mesh Models](http://sci-hub.cc/10.1109/tmi.2012.2234474) in C++ (in CPU).
- Since [NVIDA SDKs](https://developer.nvidia.com/rtx/ray-tracing/optix) enable developers to make full use of the power of ray tracing on NVIDA GeForce RTX platform , we highly suggest that users can use their SDKs to reimplement our method.

## How to use
### 1. Ray-casting margin generation
Related Files:
- src/
- utils/
- include/
- examples/Sphere
- build/
- CMakeList.txt
- Simulated_US.txt
- postlog_rf.txt
- prelog_rf.txt
- tumor_points.txt
### 2. Post-processing (draw the marign uniformity plot, extract surface points from vtk model, estiamte tumor coverage)
Related Files:
- MarginTUmorAblation/
- Applicator_angle_distance.m
- createMarginVTK.py
- createUniformityVTK.py

## Prerequisites and Platforms
- OS: Ubuntu 20.04 (for Ray-casting margin margin generation)
- C++14 compiler (tested using MinGW-w64)
- CMake 3.2
- Vscode 1.67
- Matlab R2020b

## Third Party Libraries
- [Bulletphysics](https://github.com/bulletphysics/bullet3) (not included, need to install separately)
- [nholthaus/units](https://github.com/nholthaus/units) (header-only, included)
- [nlohmann/json](https://github.com/nlohmann/json) (header-only, included)
