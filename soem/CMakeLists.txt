
cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
rosbuild_init()

execute_process(COMMAND /bin/bash shell-script.sh WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY})


set(ROS_BUILD_STATIC_LIBS true)
set(ROS_BUILD_SHARED_LIBS true)


rosbuild_add_library(soem 
	src/ethercatbase.c 
  src/ethercatcoe.c 
  src/ethercatconfig.c 
  src/ethercatfoe.c 
  src/ethercatsoe.c 
  src/ethercatmain.c 
  src/ethercatprint.c 
  src/nicdrv.c 
  src/ethercatdc.c
)

