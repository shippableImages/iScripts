#!/bin/bash -e

echo "Installing Node.js 0.12..."

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.12

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default 0.12

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli

echo "Done installing Node.js 0.12"
