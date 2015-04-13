#!/bin/bash -e

# Activate rvm and install Ruby 1.9.2
sudo su - shippable -c 'source /home/shippable/.rvm/scripts/rvm'
sudo su - shippable -c 'rvm install 1.9.2'
sudo su - shippable -c 'rvm use 1.9.2'
