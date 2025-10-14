
<div align="center">
<h1>3D US-based Tumour Coverage Evaluation and Optimization</h1>
<a href="https://xingorno.github.io/3DLIVUS/"><img src="https://img.shields.io/badge/Project-red" alt="Project Page"></a>
<a href="https://ieeexplore.ieee.org/abstract/document/9800921" target="_blank" rel="noopener noreferrer">
  <img src="https://img.shields.io/badge/Publication-IEEE TMI-green" alt="Publication">
</a>
</div>


## How to use
### Step 1. Ray-casting margin generation
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
### Step 2. Post-processing (draw the marign uniformity plot, extract surface points from vtk model, estiamte tumor coverage)
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

## Citation
If you are using our code for your research, please cite our publication:
```
@article{xing20223d,
  title={3d us-based evaluation and optimization of tumor coverage for us-guided percutaneous liver thermal ablation},
  author={Xing, Shuwei and Romero, Joeana Cambranis and Cool, Derek W and Mujoomdar, Amol and Chen, Elvis CS and Peters, Terry M and Fenster, Aaron},
  journal={IEEE Transactions on Medical Imaging},
  volume={41},
  number={11},
  pages={3344--3356},
  year={2022},
  publisher={IEEE}
}
```

## Related work 
- Our previous work: [ultrasound simulation](https://github.com/Xingorno/Ultrasound_Simulation_Ray_Tracing), [Tumor coverage evaluation](https://ieeexplore.ieee.org/iel7/42/9931396/09800921.pdf)
- [Real-Time GPU-Based Ultrasound Simulation Using Deformable Mesh Models](http://sci-hub.cc/10.1109/tmi.2012.2234474) in C++ (in CPU).
- Since [NVIDA SDKs](https://developer.nvidia.com/rtx/ray-tracing/optix) enable developers to make full use of the power of ray tracing on NVIDA GeForce RTX platform , we highly suggest that users can use their SDKs to reimplement our method.
