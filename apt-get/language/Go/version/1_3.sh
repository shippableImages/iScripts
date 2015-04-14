#!/bin/bash -e

# Install Go 1.3
echo "Installing Go 1.3..."
. /root/.gvm/scripts/gvm && gvm install go1.3;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"

gvm use go1.3 --default

export GVM_ROOT="/root/.gvm"
export PATH="$PATH:/root/.gvm/bin"

echo "Done installing Go 1.3"
