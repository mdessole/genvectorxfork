#!/bin/sh

ACPP_VISIBILITY_MASK=ocl ONEAPI_DEVICE_SELECTOR=opencl:0 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py Boost fpga_dp 3
ACPP_VISIBILITY_MASK=ocl ONEAPI_DEVICE_SELECTOR=opencl:1 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py Boost ocl_dp 3
ACPP_VISIBILITY_MASK=cuda ONEAPI_DEVICE_SELECTOR=cuda:0 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py Boost cuda_dp 3

ACPP_VISIBILITY_MASK=ocl ONEAPI_DEVICE_SELECTOR=opencl:1 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py InvariantMasses ocl_dp 3
ACPP_VISIBILITY_MASK=ocl ONEAPI_DEVICE_SELECTOR=opencl:0 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py InvariantMasses fpga_dp 3
ACPP_VISIBILITY_MASK=cuda ONEAPI_DEVICE_SELECTOR=cuda:0 python /home/mdessole/Projects/ROOT/genvectorxfork/plots/plots.py InvariantMasses cuda_dp 3
