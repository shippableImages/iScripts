#!/bin/bash -e

locale-gen en_US en_US.UTF-8 && \
dpkg-reconfigure locales

# add packages needed for many languages
apt-get update && apt-get install -y \
  sudo  \
  build-essential \
  curl \
  gcc \
  git-core \
  make \
  python-pip \
  python-software-properties \
  wget \

# Create user 'shippable' if it doesn't exist
# TODO: Do we need this user?
sudo id -u shippable &>/dev/null || sudo useradd -m shippable

add-apt-repository ppa:git-core/ppa \
  && apt-get update \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/

