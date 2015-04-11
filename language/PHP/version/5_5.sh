#!/bin/bash -e

echo "============ Building PHP 5.5.23 =============="
php-build -i development --pear 5.5.23 $HOME/.phpenv/versions/5.5.23
phpenv rehash 
phpenv global 5.5.23
