#!/bin/bash -e

# Activate rvm and install Ruby gems
sudo su - shippable -c 'source /home/shippable/.rvm/scripts/rvm'
sudo su - shippable -c 'gem install bundler'
