# Install script for directory: /Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/usr/local")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "clang-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/5.0.0/include" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/adxintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/altivec.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/ammintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/arm_acle.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/armintr.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx2intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512bwintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512cdintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vpopcntdqintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512dqintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512erintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512fintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512ifmaintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512ifmavlintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512pfintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vbmiintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vbmivlintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vlbwintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vlcdintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vldqintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avx512vlintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/avxintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/bmi2intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/bmiintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_builtin_vars.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_cmath.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_complex_builtins.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_intrinsics.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_math_forward_declares.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__clang_cuda_runtime_wrapper.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/clzerointrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/cpuid.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/clflushoptintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/emmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/f16cintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/float.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/fma4intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/fmaintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/fxsrintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/htmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/htmxlintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/ia32intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/immintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/inttypes.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/iso646.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/lwpintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/lzcntintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/mm3dnow.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/mmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/mm_malloc.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/module.modulemap"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/msa.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/mwaitxintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/nmmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/opencl-c.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/pkuintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/pmmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/popcntintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/prfchwintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/rdseedintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/rtmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/s390intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/shaintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/smmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/tbmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/tgmath.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/tmmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/unwind.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/vadefs.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/varargs.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/vecintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/wmmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__wmmintrin_aes.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/__wmmintrin_pclmul.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/x86intrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xmmintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xopintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xsavecintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xsaveintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xsaveoptintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xsavesintrin.h"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/xtestintrin.h"
    "/Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/Headers/arm_neon.h"
    )
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "clang-headers" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/clang/5.0.0/include/cuda_wrappers" TYPE FILE PERMISSIONS OWNER_READ OWNER_WRITE GROUP_READ WORLD_READ FILES
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/cuda_wrappers/algorithm"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/cuda_wrappers/complex"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/lib/Headers/cuda_wrappers/new"
    )
endif()

