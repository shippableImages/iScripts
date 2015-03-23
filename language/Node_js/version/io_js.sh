#!/bin/bash -e

echo "Installing io.js, v. 1.x..."

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install iojs

# tell nvm to use this version as default
. /root/.nvm/nvm.sh && nvm alias default iojs

# Update npm to latest version
npm install npm -g

# Install grunt-cli
npm install -g grunt-cli

echo "Done installing io.js"
