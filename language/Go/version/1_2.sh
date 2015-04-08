#!/bin/bash -e

# Install Go 1.2
echo "Installing Go 1.2..."
. /root/.gvm/scripts/gvm && gvm install go1.2;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"

gvm use go1.2 --default

export GVM_ROOT="/root/.gvm"
export PATH="$PATH:/root/.gvm/bin"

echo "Done installing Go 1.2"
