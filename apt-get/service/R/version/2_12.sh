#!/bin/bash -e

VERSION=2.12.2

# Install prerequisites
sudo apt-get install -y gfortran libreadline-dev

# Install OpenJDK7 if no Java interpreter exist
jre=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
if [[ -z "$jre" ]]; then
  sudo apt-get install -y openjdk-7-jre
fi

# Install R
sudo wget http://cran.cnr.berkeley.edu/bin/linux/ubuntu/trusty/r-base_${VERSION}.orig.tar.gz
sudo tar xzf r-base_${VERSION}.orig.tar.gz && cd R-${VERSION}
./configure --without-x
make && sudo make install
cd .. && sudo rm -rf R-${VERSION} && sudo rm -f r-base_${VERSION}.orig.tar.gz
