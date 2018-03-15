#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y
sudo apt-get install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y

git clone https://github.com/hyc/cpuminer-multi

chmod +x niobio.sh
cd cpuminer-multi 
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install
mv ../niobio.sh niobio.sh
./niobio.sh
clear
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Cpuminer instalados.
echo Pressione Enter para Continuar
exit
