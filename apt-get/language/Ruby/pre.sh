#!/bin/bash -e

#sudo su - shippable -c 'gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3'
#sudo su - shippable -c 'curl -sSL https://get.rvm.io | bash -s stable'
#sudo su - shippable -c 'source /home/shippable/.rvm/scripts/rvm'
#sudo su - shippable -c 'rvm requirements'

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
curl -sSL https://get.rvm.io | bash -s stable
source /etc/profile.d/rvm.sh
rvm requirements
