
cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
rosbuild_init()

execute_process(COMMAND /bin/bash shell-script.sh WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY})


set(ROS_BUILD_STATIC_LIBS true)
set(ROS_BUILD_SHARED_LIBS true)


rosbuild_add_library(soem 
	SOEM1.2.5/src/ethercatbase.c 
  SOEM1.2.5/src/ethercatcoe.c 
  SOEM1.2.5/src/ethercatconfig.c 
  SOEM1.2.5/src/ethercatfoe.c 
  SOEM1.2.5/src/ethercatsoe.c 
  SOEM1.2.5/src/ethercatmain.c 
  SOEM1.2.5/src/ethercatprint.c 
  SOEM1.2.5/src/nicdrv.c 
  SOEM1.2.5/src/ethercatdc.c
)

