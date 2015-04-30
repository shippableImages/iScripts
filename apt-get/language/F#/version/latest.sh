#!/bin/bash -e

MONO_VERSION=4.0.1

# Install dependencies
sudo apt-get install -y bzip2 gettext autoconf libtool pkg-config make git automake

# Install mono
sudo wget http://download.mono-project.com/sources/mono/mono-${MONO_VERSION}.tar.bz2
sudo bunzip2 mono-${MONO_VERSION}.tar.bz2 && sudo tar xf mono-${MONO_VERSION}.tar
cd mono-${MONO_VERSION}
sudo ./configure --prefix=/usr/local
sudo make && sudo make install
cd .. && sudo rm -rf mono-${MONO_VERSION}*

# Install Fsharp
git clone https://github.com/fsharp/fsharp
cd fsharp
./autogen.sh --prefix=/usr/local
make && sudo make install
cd .. && rm -rf fsharp
