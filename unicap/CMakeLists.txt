cmake_minimum_required(VERSION 2.8)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
rosbuild_init()

execute_process(COMMAND /bin/bash shell-script.sh WORKING_DIRECTORY ${CMAKE_HOME_DIRECTORY})
