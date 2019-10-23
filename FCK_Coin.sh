#!/bin/bash
sudo apt update -y
sleep 2
sudo apt upgrade -y
sleep 2
sudo apt-get --assume-yes install build-essential libtool autotools-dev automake pkg-config libssl-dev libevent-dev bsdmainutils python3
sleep 2
sudo apt-get --assume-yes install software-properties-common
sleep 2
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sleep 2
sudo apt-get --assume-yes update
sleep 2
sudo apt-get --assume-yes install libdb4.8-dev libdb4.8++-dev
sleep 2
sudo apt-get --assume-yes install libminiupnpc-dev
sleep 2
sudo apt-get --assume-yes install libzmq3-dev 
sleep 2
sudo apt-get --assume-yes install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools libprotobuf-dev protobuf-compiler
sleep 2
sudo apt-get --assume-yes install libqrencode-dev
sleep 2
sudo apt-get --assume-yes install libboost-all-dev
sleep 2
sudo git clone https://github.com/krewshul/fckbankscoin.git 
sleep 2
cd fckbankscoin/src/
sleep 2
sudo make -f makefile.unix
sleep 2
exit