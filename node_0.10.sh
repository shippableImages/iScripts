#!/bin/bash -e

# run ubuntu 12 prep script:
sh ./ubuntu_12.sh

# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
NVM_DIR = /root/.nvm

# use nvm to install node
nvm install 0.10

# why is this in our dockerfile? what . /root/.nvm/nvm.sh doing?
# . /root/.nvm/nvm.sh && nvm install 0.10

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli
