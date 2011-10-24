#/bin/bash
if [ ! -f ./install/lib/libc_urg.a ] ; then
  wget -nc --tries=10 http://www.hokuyo-aut.jp/02sensor/07scanner/download/urg_programs_en/urg-0.8.13.zip
  unzip -o urg-0.8.13.zip
  install_path=`pwd`/install
  cd urg-0.8.13
  ./configure --prefix=$install_path
  make
  make install
fi
