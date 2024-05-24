#!/bin/bash -l

yum install gcc -y
wget http://ohse.de/uwe/releases/lrzsz-0.12.20.tar.gz
tar -xzvf lrzsz-0.12.20.tar.gz
cd lrzsz-0.12.20
./configure --prefix=/usr/local/lrzsz
make
make install
cd /usr/bin
ln -s /usr/local/lrzsz/bin/lrz rz
ln -s /usr/local/lrzsz/bin/lsz sz