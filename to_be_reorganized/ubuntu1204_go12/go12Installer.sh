#!/bin/bash

sudo apt-get update
sudo apt-get upgrade -y

# Install base packages
sudo apt-get install -y \
	autotools-dev \
	autoconf \
	bison \
	git \
	mercurial \
	make \
	cmake \
	scons \
	binutils \
	gcc \
	build-essential

# Create user 'shippable' if it doesn't exist
sudo id -u shippable &>/dev/null || sudo useradd -m shippable

echo "================= Installing gvm ==================="
sudo su - shippable -c "curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash";
sudo su - shippable -c "echo '[[ -s \"/home/shippable/.gvm/scripts/gvm\" ]] && source \"/home/shippable/.gvm/scripts/gvm\"' >> /home/shippable/.bashrc";

# Install Go 1.2
echo "================= Installing GO 1.2 ==================="
sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install go1.2";