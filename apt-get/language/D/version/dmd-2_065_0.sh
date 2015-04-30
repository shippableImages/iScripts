#!/bin/bash

VERSION="2.065.0"

sudo wget http://downloads.dlang.org/releases/2.x/${VERSION}/dmd_${VERSION}-0_amd64.deb
sudo dpkg -i dmd_${VERSION}-0_amd64.deb
sudo apt-get install -y -f
sudo rm -f dmd_${VERSION}-0_amd64.deb
