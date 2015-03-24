#!/bin/bash -e

# Install Go tip
echo "Installing Go tip..."
sudo su - shippable -c "source /home/shippable/.gvm/scripts/gvm && gvm install tip";

# Activate Go
[[ -s "/home/shippable/.gvm/scripts/gvm" ]] && source "/home/shippable/.gvm/scripts/gvm"
gvm use tip

echo "Done installing Go tip"
