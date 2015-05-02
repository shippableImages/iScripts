#!/bin/bash -e

VERSION=4.0.1

# Install dependencies
sudo apt-get install -y bzip2 gettext

# Install mono
sudo wget http://download.mono-project.com/sources/mono/mono-${VERSION}.tar.bz2
sudo bunzip2 mono-${VERSION}.tar.bz2 && sudo tar xf mono-${VERSION}.tar
cd mono-${VERSION}
sudo ./configure --prefix=/usr/local
sudo make && sudo make install
cd .. && sudo rm -rf mono-${VERSION}*

# Install mono-basic
git clone https://github.com/mono/mono-basic.git
cd mono-basic
./configure
make && sudo make install
cd .. && rm -rf mono-basic
