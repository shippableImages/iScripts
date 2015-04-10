#!/bin/bash -e

# TODO: make sure pre and post don't run for every version installation

echo "==========Getting Ready to Install Node.js=========="

# needed for v.0.6x
apt-get update && apt-get install -y \
  libssl-dev \
  openssl

echo "Installing nvm..."
# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
export NVM_DIR="/root/.nvm"

# add source of nvm to .bashrc - allows user to use nvm as a command
echo "source ~/.nvm/nvm.sh" >> .bashrc
