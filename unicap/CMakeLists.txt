cmake_minimum_required(VERSION 2.8)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
rosbuild_init()

include_directories(
./install/include
)

link_directories(
./install/lib
)

link_libraries(	
libc_urg
libc_urg_connection
libc_urg_system
liburg
liburg_common
liburg_connection
liburg_connection_sdl
liburg_coordinate
liburg_geometry
liburg_monitor
liburg_system
)


