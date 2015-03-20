#!/bin/bash -e

# TODO: make sure pre and post don't run for every version installation

echo "==========Installing Node.js=========="

echo "Installing nvm..."
# install nvm:
curl https://raw.githubusercontent.com/creationix/nvm/v0.24.0/install.sh | bash

# Set NVM_DIR so the installations go to the right place
NVM_DIR = /root/.nvm
