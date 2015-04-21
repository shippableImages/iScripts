#!/bin/bash -e

# Install MongoDB 2.4
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
sudo echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' | sudo tee /etc/apt/sources.list.d/mongodb.list
sudo apt-get update
sudo apt-get install mongodb-10gen=2.4.13

# Create the data directory
sudo mkdir -p /data/db

# Pin the current version
sudo echo "mongodb-10gen hold" | sudo dpkg --set-selections
