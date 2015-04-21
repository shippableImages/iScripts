#!/bin/bash -e

# Install Cassandra 2.0
sudo echo "deb http://debian.datastax.com/community stable main" | sudo tee -a /etc/apt/sources.list.d/cassandra.sources.list
sudo curl -L http://debian.datastax.com/debian/repo_key | sudo apt-key add -
sudo apt-get update
sudo apt-get install -y dsc20=2.0.11-1 cassandra=2.0.11

# Start service on boot
sudo update-rc.d cassandra defaults
