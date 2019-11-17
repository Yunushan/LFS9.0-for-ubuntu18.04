#!/bin/bash

echo ""
echo "----------- Starting Install-2.sh-----------"
echo ""

printf "\n\nUpdating File Database Please wait Until Finished"
sudo updatedb
lfs90=`sudo locate lfs9.0-for-ubuntu18.04 | head -n 1`
sudo chmod +x $lfs90
cd $lfs90

sudo ./5.3.General-Compilation-Instructions.sh
sudo ./5.4.Binutils-2.32-Pass-1.sh
sudo ./5.5.GCC-9.2.0-Pass-1.sh
sudo ./5.6.Linux-5.2.8-API-Headers.sh
sudo ./5.7.Glibc-2.30.sh
sudo ./5.8.Libstdc++-from-GCC-9.2.0.sh
sudo ./5.9.Binutils-2.32-Pass-2.sh
sudo ./5.10.GCC-9.2.0-Pass-2.sh
sudo ./5.11.Tcl-8.6.9.sh
sudo ./5.12.Expect-5.45.4.sh
sudo ./5.13.DejaGNU-1.6.2.sh
sudo ./5.14.M4-1.4.18.sh
sudo ./5.15.Ncurses-6.1.sh
sudo ./5.16.Bash-5.0.sh
sudo ./5.17.Bison-3.4.1.sh
sudo ./5.18.Bzip2-1.0.8.sh
sudo ./5.19.Coreutils-8.31.sh
sudo ./5.20.Diffutils-3.7.sh
sudo ./5.21.File-5.37.sh
sudo ./5.22.Findutils-4.6.0.sh
sudo ./5.23.Gawk-5.0.1.sh
sudo ./5.24.Gettext-0.20.1.sh
sudo ./5.25.Grep-3.3.sh
sudo ./5.26.Gzip-1.10.sh
sudo ./5.27.Make-4.2.1.sh
sudo ./5.28.Patch-2.7.6.sh
sudo ./5.29.Perl-5.30.0.sh
sudo ./5.30.Python-3.7.4.sh
sudo ./5.31.Sed-4.7.sh
sudo ./5.32.Tar-1.32.sh
sudo ./5.33.Texinfo-6.6.sh
sudo ./5.34.Util-linux-2.34.sh
sudo ./5.35.Xz-5.2.4.sh
sudo ./5.36.Stripping.sh