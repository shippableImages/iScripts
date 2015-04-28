#!/bin/bash -e

sudo apt-get install -y build-essential autoconf automake cmake scons

# Install clang
sudo wget -O - http://llvm.org/apt/llvm-snapshot.gpg.key | sudo apt-key add -
sudo apt-get install -y clang libclang-dev

# Install biicode
sudo wget http://apt.biicode.com/install.sh 
sudo chmod +x install.sh && sudo ./install.sh
sudo bii setup:cpp
