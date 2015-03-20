#!/bin/bash -e

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
  # are gcc and make included in build-essential?
  # do we need apt-utils?

# Create user 'shippable' if it doesn't exist
sudo id -u shippable &>/dev/null || sudo useradd -m shippable

add-apt-repository ppa:git-core/ppa \
  && apt-get update \
  && apt-get install -y git \
  && rm -rf /var/lib/apt/lists/

