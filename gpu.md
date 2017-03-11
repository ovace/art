# GPU

## External GPU

Powerful desktop GPU connected to a laptop externally.

<https://www.youtube.com/watch?v=bP_8EYQ-2RA>

## ISA

## Instruction set

AMD yes kind of, NVIDIA only higher levels:

- <http://stackoverflow.com/questions/1697842/do-graphic-cards-have-instruction-sets-of-their-own>
- <http://stackoverflow.com/questions/20341502/what-instruction-set-does-the-nvidia-geforce-6xx-series-use>
- <http://stackoverflow.com/questions/3677220/is-it-possible-to-put-assembly-instructions-into-cuda-code/7072079#7072079>
- <http://stackoverflow.com/questions/4660974/how-to-create-or-manipulate-gpu-assembler>
- <http://superuser.com/questions/668019/how-do-device-driver-instructions-program-the-gpu>
- <http://stackoverflow.com/questions/9798258/what-is-sass-short-for?lq=1>
- <http://stackoverflow.com/questions/9798258/what-is-sass-short-for>

In most cases: vendors implement public APIs like OpenGL, CUDA, OpenCL, etc. as closed source, and give you a driver blob that talks to the GPU.

### SPIR

Standardized intermediate language (bytecode) by Khronos for both graphics and compute.

OpenCL and shaders can compile to it.

<https://www.khronos.org/spir>. Has LLVM implementation.

<https://streamcomputing.eu/blog/2013-12-27/opencl-spir-by-example/>

Has 2 profiles, graphics and compute

Vulkan compute shaders support it. AMD and NVIDIA are likely to support Vulkan well. Result: we can compile OpenCL and CUDA to SPIR-V, and run it on either NVIDIA or AMD.

But there are 2 profiles: graphics and compute, and Vulkan only requires the graphics profile.

Also made allow obfuscating kernel code.

OpenCL and Vulkan can interact with it.

### ARB assembly

https://en.wikipedia.org/wiki/ARB_assembly_language

### AMD-IL

TODO

### PTX

TODO NVIDIA? Also virtual, i.e., gets compiled

#### SASS

TODO http://stackoverflow.com/questions/9798258/what-is-sass-short-for

## Shading language

## GPGPU

Before GPGPUs, came shading languages, which are compiled C-like languages which do arbitrary shading algorithms.

### PhysX

<https://en.wikipedia.org/wiki/PhysX>

## AMD

Top consoles use it instead of NVIDIA, it seems that they license IP:

- <https://en.wikipedia.org/wiki/PlayStation_4> semi custom AMD
- <https://en.wikipedia.org/wiki/Xbox_One>

### GPUOpen

<https://en.wikipedia.org/wiki/GPUOpen>

<https://en.wikipedia.org/wiki/GPUOpen#AMD_Boltzmann_Initiative>

<http://gpuocelot.gatech.edu/>

Presentation video: <https://www.youtube.com/watch?v=Y0oBFeFUG4w>

## Mobile

Major IP implementations:

- ARM Mali
- Imagination PowerVR
- Vivante
- Qualcomm Adreno
- Broadcom VideoCore
- NVIDIA ULP

2013 market share: <http://jonpeddie.com/press-releases/details/qualcomm-single-largest-proprietary-gpu-supplier-imagination-technologies-t/>

- http://www.cnx-software.com/2013/01/19/gpus-comparison-arm-mali-vs-vivante-gcxxx-vs-powervr-sgx-vs-nvidia-geforce-ulp/

## Unified memory architecture

<https://devblogs.nvidia.com/parallelforall/unified-memory-in-cuda-6/>

GPU and CPU share RAM.

## Comparison of GPUs

Non trivial like any other big product. Two major metrics are significant:

-   performance per mm2 of silicon.

    Where performance is in units of some meaningful benchmark, e.g. GFXBench for 3d gaming.

    Area translates directly into fabrication cost, and is specially important for low end devices.

    This measure is even more meaningful than shelf cost, since those can be subsided by other business segments (not that we can obtain them for SoCs anyways).

    Area is usually measured per core, as IP vendors allow multiple core configurations on an SoC.

    Area is not generally published publicly for all IP, e.g. see the wiki page: <https://en.wikipedia.org/wiki/Mali_(GPU)>

    But reverse engineering companies like Chipworks can extract and sell that information: <http://www.anandtech.com/show/9824/more-on-apples-a9x-soc>

    FLOPs are basically a theoretical upper limit on computational power, since it is impossible to fill every cycle of real content with useful operations.

    One problem is if specific operations like transcendentals and dot products should be counted towards FLOPs or not.

-   performance per Watts. Battery life constraints on mobile, and huge energy money savings on supercomputing. Less important on desktops.

    TODO: can this be measured for the GPU alone when inside an SoC?

    - <https://community.arm.com/thread/6945>

    Some possibilities (TODO not sure):

    - can likely be estimated well from area + fab process + clock speed
    - hardware monitoring registers?

## Open source GPUs

To the RTL level.

### MIAOW

Implements the GCN AMD openly documented ISA (TODO legal? <http://www.theregister.co.uk/2015/08/31/boffins_unveil_open_source_gpu/> says pending on vendor, thus illegal).

Made by researches from <https://en.wikipedia.org/wiki/University_of_Wisconsin%E2%80%93Madison>

<https://github.com/VerticalResearchGroup/miaow>

<https://en.wikipedia.org/wiki/Graphics_Core_Next>

<https://github.com/VerticalResearchGroup/miaow>

## SIMT

## Warps

TODO understand!!! Minimal execution example!!!

- <https://en.wikipedia.org/wiki/Single_instruction,_multiple_threads>
- <http://yosefk.com/blog/simd-simt-smt-parallelism-in-nvidia-gpus.html>
- <http://stackoverflow.com/questions/3606636/cuda-model-what-is-warp-size>
- <http://stackoverflow.com/questions/10460742/how-do-cuda-blocks-warps-threads-map-onto-cuda-cores>
