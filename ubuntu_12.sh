#!/bin/bash -e

apt-get update && apt-get install -y
apt-get install curl wget build-essential make
apt-get install python-pip python-software-properties
# install python if it's not automatically installed with ubuntu
