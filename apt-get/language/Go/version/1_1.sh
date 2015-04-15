#!/bin/bash -e

# TODO: cross-check this list against final ubuntu os script
# Install packages for Go
apt-get update && apt-get install -y \
	autotools-dev \
	autoconf \
	bison \
	git \
	mercurial \
	cmake \
	scons \
	binutils

# Install Go 1.1
curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash
[[ -s "$HOME/.gvm/scripts/gvm" ]] && source $HOME/.gvm/scripts/gvm 
gvm install go1.1 && gvm use go1.1 --default
echo 'GVM_ROOT=$HOME/.gvm' >> $HOME/.bashrc


#echo "Installing gvm..."
#curl -s -L https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash;
#echo '[[ -s \"/root/.gvm/scripts/gvm\" ]] && source \"/root/.gvm/scripts/gvm\"' >> /root/.bashrc;
#
# Install Go 1.1
#echo "Installing Go 1.1..."
#. /root/.gvm/scripts/gvm && gvm install go1.1
#
# Activate Go
#[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"
#
#gvm use go1.1 --default
#
#export GVM_ROOT="/root/.gvm"
#export PATH="$PATH:/root/.gvm/bin"
#
#echo "Done installing Go 1.1"
