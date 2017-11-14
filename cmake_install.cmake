# Install script for directory: /Users/nhacnguyen/workspace/llvm/tools/clang

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

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES
    "/Users/nhacnguyen/workspace/llvm/tools/clang/include/clang"
    "/Users/nhacnguyen/workspace/llvm/tools/clang/include/clang-c"
    FILES_MATCHING REGEX "/[^/]*\\.def$" REGEX "/[^/]*\\.h$" REGEX "/config\\.h$" EXCLUDE REGEX "/\\.svn$" EXCLUDE)
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/clang" FILES_MATCHING REGEX "/cmakefiles$" EXCLUDE REGEX "/[^/]*\\.inc$" REGEX "/[^/]*\\.h$")
endif()

if("${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/clang" TYPE PROGRAM FILES "/Users/nhacnguyen/workspace/llvm/tools/clang/utils/bash-autocomplete.sh")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/TableGen/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/include/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/lib/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/tools/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/runtime/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/test/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/utils/perf-training/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/docs/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/cmake/modules/cmake_install.cmake")

endif()

