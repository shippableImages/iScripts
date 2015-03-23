#!/bin/bash -e

# Install Go 1.1
echo "Installing Go 1.1..."
sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install go1.1";

# Activate Go
[[ -s "/home/shippable/.gvm/scripts/gvm" ]] && source "/home/shippable/.gvm/scripts/gvm"
gvm use go1.1

echo "Done installing Go 1.1"
