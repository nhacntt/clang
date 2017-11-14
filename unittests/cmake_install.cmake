# Install script for directory: /Users/nhacnguyen/workspace/llvm/tools/clang/unittests

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

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Basic/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Lex/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Driver/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Analysis/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/StaticAnalyzer/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Frontend/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/ASTMatchers/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/AST/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Tooling/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Format/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Rewrite/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Sema/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/CodeGen/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/libclang/cmake_install.cmake")
  include("/Users/nhacnguyen/workspace/llvm/Build/tools/clang/unittests/Rename/cmake_install.cmake")

endif()

