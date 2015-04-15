#!/bin/bash -e

# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows user to use nvm as a command
echo "source ~/.nvm/nvm.sh" >> .bashrc

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install iojs

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default iojs

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli
