#!/bin/bash -e

# Install Go 1.4
echo "Installing Go 1.4..."
sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install go1.4";

# Activate Go
[[ -s "/home/shippable/.gvm/scripts/gvm" ]] && source "/home/shippable/.gvm/scripts/gvm"
gvm use go1.4

echo "Done installing Go 1.4"
