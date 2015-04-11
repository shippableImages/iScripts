#!/bin/bash -e

export PATH=$HOME/.phpenv/bin:$PATH
eval "$(phpenv init -)"

echo "============ Installing PHPUnit ============="
wget https://phar.phpunit.de/phpunit.phar
chmod +x phpunit.phar
mv phpunit.phar /usr/local/bin/phpunit

echo "============ Installing Composer ============"
curl -s http://getcomposer.org/installer | php
chmod +x composer.phar
mv composer.phar /usr/local/bin/composer

echo "=========== Installing PHP extensions =============="
apt-get install -y libzmq-dev
printf '\n' | pecl install memcache
printf '\n' | pecl install memcached
printf '\n' | pecl install mongo
printf '\n' | pecl install amqp
printf '\n' | pecl install zmq-beta
printf '\n' | pecl install redis
