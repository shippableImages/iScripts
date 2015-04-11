#!/bin/bash -e

echo "============ Building PHP 5.4.39 =============="
php-build -i development --pear 5.4.39 $HOME/.phpenv/versions/5.4.39
phpenv rehash 
phpenv global 5.4.39
