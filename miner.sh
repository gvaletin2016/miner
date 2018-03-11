#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y
sudo apt-get install build-essential autotools-dev autoconf libcurl3 libcurl4-gnutls-dev -y

git clone https://github.com/hyc/cpuminer-multi

cd cpuminer-multi 
chmod +x autogen.sh
./autogen.sh
CFLAGS="-march=native" ./configure
make
sudo make install

clear
echo Repositorio Atualizado.
echo Sistema Atualizado.
echo Cpuminer instalados.
echo .
echo ..
echo ...
echo Pressione Enter para Continuar
read #pausa
exit