#!/bin/bash -e

# Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh

# Activate rvm and install Ruby 1.9.3
rvm requirements
rvm install 1.9.3
rvm use 1.9.3

# Install ruby gems
gem install bundler
