#!/bin/bash -e

# Install Go tip
echo "Installing Go tip..."
. /root/.gvm/scripts/gvm && gvm install tip;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"

gvm use tip

export GVM_ROOT="/root/.gvm"
export PATH="$PATH:/root/.gvm/bin"

echo "Done installing Go tip"
