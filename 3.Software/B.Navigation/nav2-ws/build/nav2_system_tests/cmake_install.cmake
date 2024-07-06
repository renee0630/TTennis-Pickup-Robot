# Install script for directory: /root/nav2-ws/src/navigation2/nav2_system_tests

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/root/nav2-ws/install/nav2_system_tests")
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

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  include("/root/nav2-ws/build/nav2_system_tests/ament_cmake_symlink_install/ament_cmake_symlink_install.cmake")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/root/nav2-ws/build/nav2_system_tests/src/behavior_tree/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/planning/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/localization/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/system/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/system_failure/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/updown/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/waypoint_follower/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/behaviors/spin/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/behaviors/wait/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/behaviors/backup/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/behaviors/drive_on_heading/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/behaviors/assisted_teleop/cmake_install.cmake")
  include("/root/nav2-ws/build/nav2_system_tests/src/costmap_filters/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/root/nav2-ws/build/nav2_system_tests/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")