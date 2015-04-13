#!/bin/bash -e

# Activate rvm and install Ruby 2.1.4
sudo su - shippable -c 'source /home/shippable/.rvm/scripts/rvm'
sudo su - shippable -c 'rvm install 2.1.4'
sudo su - shippable -c 'rvm use 2.1.4'
