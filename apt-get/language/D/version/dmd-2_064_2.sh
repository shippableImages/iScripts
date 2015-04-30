#!/bin/bash

VERSION="2.064.2"

sudo wget http://downloads.dlang.org/releases/2.x/2.064/dmd_${VERSION}-0_amd64.deb
sudo dpkg -i dmd_${VERSION}-0_amd64.deb
sudo apt-get install -y -f
sudo rm -f dmd_${VERSION}-0_amd64.deb
