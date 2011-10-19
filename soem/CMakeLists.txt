
cmake_minimum_required(VERSION 2.4.6)
include($ENV{ROS_ROOT}/core/rosbuild/rosbuild.cmake)
rosbuild_init()

#rosbuild_download_data(http://download.berlios.de/soem/SOEM1.2.5.tar.bz2 SOEM1.2.5.tar.bz2 222c3003d047766463e567f7a49981f9)
#rosbuild_untar_file(SOEM1.2.5.tar.bz2 test)


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

