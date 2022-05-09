# Install script for directory: /home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/wafer/Native_SDK/Intro_Mobile_Graphics/../install/")
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

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/01_IntroducingPVRShell/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/01_IntroducingPVRShell_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/01_IntroducingPVRShell_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/01_IntroducingPVRShell_EX3_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/02_IntroducingPVRUtils/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/02_IntroducingPVRUtils_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/02_IntroducingPVRUtils_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/03_2D_Texturing/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/03_2D_Texturing_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/03_2D_Texturing_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/03_2D_Texturing_EX3-4_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/03_2D_Texturing_EX5_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting_EX4_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting_EX5_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/04_SimpleLighting_EX6_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/05_PointLighting_EX3_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/06_Reflection_Refraction/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/06_Reflection_Refraction_EX1_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/06_Reflection_Refraction_EX2_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/06_Reflection_Refraction_EX3_COMPLETED/cmake_install.cmake")
  include("/home/wafer/Native_SDK/Intro_Mobile_Graphics/OpenGLES/06_Reflection_Refraction_EX4_COMPLETED/cmake_install.cmake")

endif()

