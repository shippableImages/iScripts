#!/bin/bash -e

# Install Go 1.3
echo "Installing Go 1.3..."
sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install go1.3";

# Activate Go
[[ -s "/home/shippable/.gvm/scripts/gvm" ]] && source "/home/shippable/.gvm/scripts/gvm"
gvm use go1.3

echo "Done installing Go 1.3"
