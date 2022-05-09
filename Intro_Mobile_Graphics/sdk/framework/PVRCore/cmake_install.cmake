# Install script for directory: /home/wafer/Native_SDK/framework/PVRCore

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

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRCore/libPVRCore.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Errors.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/IAssetProvider.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Log.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/PVRCore.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/RefCounted.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Time.cpp")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Time_.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Threading.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/Utils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/commandline" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/commandline/CommandLine.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/stream" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/stream/BufferStream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/stream" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/stream/FilePath.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/stream" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/stream/FileStream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/stream" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/stream/Stream.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/strings" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/strings/CompileTimeHash.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/strings" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/strings/StringFunctions.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/strings" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/strings/StringHash.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/strings" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/strings/UnicodeConverter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/MetaData.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/PixelFormat.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/PVRTDecompress.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/Texture.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/TextureDefines.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/TextureHeader.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/TextureLoad.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/texture" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/texture/TextureLoadAsync.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesBMP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesDDS.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesKTX.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesPVR.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesTGA.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/FileDefinesXNB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/PaletteExpander.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderBMP.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderDDS.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderKTX.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderPVR.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderTGA.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureReaderXNB.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TextureWriterPVR.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/textureio" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/textureio/TGAWriter.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/types" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/types/FreeValue.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/types" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/types/GpuDataTypes.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/types" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/types/Types.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/glm.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/cameras" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/cameras/CameraKeyFrame.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/cameras" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/cameras/FPSCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/cameras" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/cameras/TPSCamera.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/math" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/math/AxisAlignedBox.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/math" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/math/MathUtils.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/math" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/math/Plane.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/math" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/math/Rectangle.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/math" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/math/Rectangle3D.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/pfx" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/pfx/Effect.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/PVRCore/pfx" TYPE FILE FILES "/home/wafer/Native_SDK/framework/PVRCore/pfx/PFXParser.h")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore/PVRCoreTargets.cmake")
    file(DIFFERENT EXPORT_FILE_CHANGED FILES
         "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore/PVRCoreTargets.cmake"
         "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRCore/CMakeFiles/Export/lib/cmake/PVRCore/PVRCoreTargets.cmake")
    if(EXPORT_FILE_CHANGED)
      file(GLOB OLD_CONFIG_FILES "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore/PVRCoreTargets-*.cmake")
      if(OLD_CONFIG_FILES)
        message(STATUS "Old export file \"$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore/PVRCoreTargets.cmake\" will be replaced.  Removing files [${OLD_CONFIG_FILES}].")
        file(REMOVE ${OLD_CONFIG_FILES})
      endif()
    endif()
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRCore/CMakeFiles/Export/lib/cmake/PVRCore/PVRCoreTargets.cmake")
  if("${CMAKE_INSTALL_CONFIG_NAME}" MATCHES "^([Rr][Ee][Ll][Ee][Aa][Ss][Ee])$")
    file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore" TYPE FILE FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRCore/CMakeFiles/Export/lib/cmake/PVRCore/PVRCoreTargets-release.cmake")
  endif()
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/cmake/PVRCore" TYPE FILE OPTIONAL FILES "/home/wafer/Native_SDK/Intro_Mobile_Graphics/sdk/framework/PVRCore/PVRCore/PVRCoreTargets.cmake")
endif()

