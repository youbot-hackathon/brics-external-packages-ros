#/bin/bash
if [ ! -f ./SOEM1.2.5/src/ethercatconfiglist.h ] ; then
  wget -nc --tries=10 http://download.berlios.de/soem/SOEM1.2.5.tar.bz2
  tar -xf SOEM1.2.5.tar.bz2
  patch SOEM1.2.5/src/ethercatconfiglist.h -i patches/patch-aa
  patch SOEM1.2.5/src/nicdrv.c -i patches/patch-ab
fi
