#!/bin/bash -e

# Install Go 1.4
echo "Installing Go 1.4..."
. /root/.gvm/scripts/gvm && gvm install go1.4;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"

gvm use go1.4 --default

export GVM_ROOT="/root/.gvm"
export PATH="$PATH:/root/.gvm/bin"

echo "Done installing Go 1.4"