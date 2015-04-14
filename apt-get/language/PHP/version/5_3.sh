#!/bin/bash

# Activate phpenv
export PATH=$HOME/.phpenv/bin:$PATH
eval "$(phpenv init -)"

echo "============ Building PHP 5.3.29 =============="
php-build -i development --pear 5.3.29 $HOME/.phpenv/versions/5.3.29
phpenv rehash 
phpenv global 5.3.29
