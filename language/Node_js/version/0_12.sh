#!/bin/bash -e

echo "Installing Node.js 0.12..."

# use nvm to install node
. /root/.nvm/nvm.sh && nvm install 0.12

echo "Done installing Node.js 0.12"
