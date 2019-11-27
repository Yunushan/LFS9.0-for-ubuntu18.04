#!/bin/bash

echo ""
echo "----------- 6.11.Zlib-1.2.11.sh -----------"
echo ""

cd /sources/
tar xvf zlib-1.2.11.tar.xz
cd zlib-1.2.11

./configure --prefix=/usr
make -j8
make check
make install
mv -v /usr/lib/libz.so.* /lib
ln -sfv ../../lib/$(readlink /usr/lib/libz.so) /usr/lib/libz.so

cd /sources/
rm -rf zlib-1.2.11