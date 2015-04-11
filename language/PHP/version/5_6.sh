#!/bin/bash -e

# Activate phpenv
export PATH=$HOME/.phpenv/bin:$PATH
eval "$(phpenv init -)"

echo "============ Building PHP 5.6.7 =============="
php-build -i development --pear 5.6.7 $HOME/.phpenv/versions/5.6.7
phpenv rehash 
phpenv global 5.6.7
