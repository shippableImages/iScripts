#!/bin/bash -e

echo "Installing Node.js 0.6..."

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.6

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default 0.6

# add this line for npm with v0.6x; npm ended support for self-signed certificates in Feb. 2014
npm config set ca=""

# Install grunt-cli
npm install -g grunt-cli

echo "Done installing Node.js 0.6"
