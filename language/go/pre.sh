#!/bin/bash -e

echo "==========Installing Go=========="

echo "Installing needed packages..."
# TODO: cross-check this list against final ubuntu os script
# Install packages for Go
sudo apt-get install -y \
	autotools-dev \
	autoconf \
	bison \
	git \
	mercurial \
	cmake \
	scons \
	binutils \
	# include make if not in ubuntu script
	# include gcc if not in ubuntu script

echo "Installing gvm..."
sudo su - shippable -c "curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash";
sudo su - shippable -c "echo '[[ -s \"/home/shippable/.gvm/scripts/gvm\" ]] && source \"/home/shippable/.gvm/scripts/gvm\"' >> /home/shippable/.bashrc";
