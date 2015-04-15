#!/bin/bash -e

# Install rvm
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
echo '[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh' >> $HOME/.bashrc
[[ -s /etc/profile.d/rvm.sh ]] && source /etc/profile.d/rvm.sh

# Install Ruby 2.1.3
rvm requirements
rvm install 2.1.3
rvm use 2.1.3

# Install ruby gems
gem install bundler
