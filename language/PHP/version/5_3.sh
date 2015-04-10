#!/bin/bash -e

# Get all necessary build dependencies
apt-get update
apt-get install -y ruby git wget libmcrypt-dev libreadline-dev
apt-get build-dep -y php5-cli

# Install phpenv
git clone git://github.com/CHH/phpenv.git $HOME/phpenv
$HOME/phpenv/bin/phpenv-install.sh
echo 'export PATH=/root/.phpenv/bin:$PATH' >> $HOME/.bashrc
echo 'eval "$(phpenv init -)"' >> $HOME/.bashrc

# Install php-build
git clone git://github.com/php-build/php-build.git $HOME/php-build
$HOME/php-build/install.sh

# Remove temporary files
rm -rf $HOME/phpenv
rm -rf $HOME/php-build

# Compile PHP 5.3.29
php-build -i development --pear 5.3.29 $HOME/.phpenv/versions/5.3.29
source $HOME/.bashrc 
phpenv rehash && phpenv global 5.3.29
