#!/bin/bash

echo ""
echo "----------- 5.22.Findutils-4.6.0.sh -----------"
echo ""

cd $LFS/sources
tar xvf findutils-4.6.0.tar.gz
cd findutils-4.6.0

sed -i 's/IO_ftrylockfile/IO_EOF_SEEN/' gl/lib/*.c
sed -i '/unistd/a #include <sys/sysmacros.h>' gl/lib/mountlist.c
echo "#define _IO_IN_BACKUP 0x100" >> gl/lib/stdio-impl.h
./configure --prefix=/tools
make
make check
make install

cd $LFS/sources
rm -rf findutils-4.6.0