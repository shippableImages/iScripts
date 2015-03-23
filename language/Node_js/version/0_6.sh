#!/bin/bash -e

echo "Installing Node.js 0.6..."

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.6

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default 0.6

# Update npm to latest version - do it this way because npm ended support for self-signed
npm config set ca ""
npm install npm -g
npm config delete ca

# Install grunt-cli
npm install -g grunt-cli

echo "Done installing Node.js 0.6"
