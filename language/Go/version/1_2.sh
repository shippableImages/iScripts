#!/bin/bash -e

# Install Go 1.2
echo "Installing Go 1.2..."
. /root/.gvm/scripts/gvm && gvm install go1.2;

# Activate Go
[[ -s "/root/.gvm/scripts/gvm" ]] && source "/root/.gvm/scripts/gvm"

gvm use go1.2

export GVM_ROOT="/root/.gvm"
export PATH="$PATH:/root/.gvm/bin"

echo "Done installing Go 1.2"

# old, from contractor in Indonesia; errors with:
# -su: 1: source: not found
# /home/shippable/.gvm/scripts/env/use: line 9: cd: /home/shippable/.gvm/archive/go: No such file or directory
# ERROR: Version not found locally. Try 'gvm install go1.2'

# sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install go1.2";

# # Activate Go
# [[ -s "/home/shippable/.gvm/scripts/gvm" ]] && source "/home/shippable/.gvm/scripts/gvm"
# gvm use go1.2
