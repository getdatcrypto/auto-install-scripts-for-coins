#!/bin/bash
BITCOIN_ROOT=$(pwd)
sleep 1
BDB_PREFIX="${BITCOIN_ROOT}/db5"
sleep 1
sudo mkdir -p $BDB_PREFIX
sleep 1
wget 'http://download.oracle.com/berkeley-db/db-5.1.29.NC.tar.gz'
sleep 1
sudo tar -xzvf db-5.1.29.NC.tar.gz
sleep 1
cd db-5.1.29.NC/build_unix/
sleep 1
sudo ../dist/configure --enable-cxx --disable-shared --with-pic --prefix=$BDB_PREFIX
sleep 1
sudo make install
sleep 1
cd $BITCOIN_ROOT
sleep 1
sudo ./autogen.sh
sleep 1
sudo ./configure LDFLAGS="-L${BDB_PREFIX}/lib/" CPPFLAGS="-I${BDB_PREFIX}/include/" CXXFLAGS="--param ggc-min-expand=1 --param ggc-min-heapsize=32768"
sleep 1
sudo make
sleep 1
sudo make install
sleep 1
exit
