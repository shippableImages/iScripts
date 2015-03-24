#!/bin/bash -e

# Install Go 1.1
echo "Installing Go 1.1..."
. /root/.gvm/scripts/gvm && gvm install go1.1;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"
gvm use go1.1

echo "Done installing Go 1.1"
