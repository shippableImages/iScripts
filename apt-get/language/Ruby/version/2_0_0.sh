#!/bin/bash -e

# Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh

# Install Ruby 2.0.0
rvm requirements
rvm install 2.0.0
rvm use 2.0.0

# Install ruby gems
gem install bundler
