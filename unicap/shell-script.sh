#/bin/bash
if [ ! -f ./install/lib/libunicap.a ] ; then
  wget --tries=10 http://unicap-imaging.org/downloads/libunicap-0.9.11.tar.gz
  tar -xf libunicap-0.9.11.tar.gz
  patch libunicap-0.9.11/include/unicap.h -i ./patches_v0.9.11/patch-ab
  patch libunicap-0.9.11/src/unicap.c -i ./patches_v0.9.11/patch-ac
  install_path=`pwd`/install
  cd libunicap-0.9.11
  ./configure --prefix=$install_path
  make
  make install
fi
