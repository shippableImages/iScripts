#!/bin/bash -e

# needed for v.0.6x
apt-get update && apt-get install -y \
  libssl-dev \
  openssl

# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows user to use nvm as a command
echo "source ~/.nvm/nvm.sh" >> .bashrc

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.6

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default 0.6

# add this line for npm with v0.6x; npm ended support for self-signed certificates in Feb. 2014
npm config set ca=""

# Install grunt-cli
npm install -g grunt-cli
