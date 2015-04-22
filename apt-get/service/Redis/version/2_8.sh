#!/bin/bash -e

VERSION=2.8.19

# Install Redis 2.8
sudo wget http://download.redis.io/releases/redis-$VERSION.tar.gz
sudo tar xzf redis-$VERSION.tar.gz && sudo rm -f redis-$VERSION.tar.gz
cd redis-$VERSION
make
sudo ln -s $(pwd)/src/redis-server /usr/local/bin/redis-server
sudo ln -s $(pwd)/src/redis-cli /usr/local/bin/redis-cli
