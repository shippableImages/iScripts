#!/bin/bash -e

# Install neko
sudo wget http://nekovm.org/_media/neko-2.0.0-linux64.tar.gz
tar xf neko-2.0.0-linux64.tar.gz
sudo cp neko-2.0.0-linux/libneko.so /usr/local/lib
sudo cp neko-2.0.0-linux/{neko,nekoc,nekotools} /usr/local/bin
sudo rm -rf neko-2.0.0-linux*

# Install haxe
sudo wget http://haxe.org/website-content/downloads/3,0,0/downloads/haxe-3.0.0-linux64.tar.gz
sudo mkdir -p /usr/local/haxe 
sudo tar xf haxe-3.0.0-linux64.tar.gz -C /usr/local/haxe
sudo rm -f haxe-3.0.0-linux64.tar.gz
echo 'export HAXE_HOME=/usr/local/haxe' >> $HOME/.bashrc
echo 'export HAXE_STD_PATH=$HAXE_HOME/std:.' >> $HOME/.bashrc
echo 'export PATH=$PATH:$HAXE_STD_PATH:$HAXE_HOME' >> $HOME/.bashrc
