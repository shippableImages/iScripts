#!/bin/bash -e

echo "=========== Installing dependencies ============"
apt-get update
apt-get install -y git wget cmake libmcrypt-dev libreadline-dev
apt-get build-dep -y php5-cli

echo "========== Installing libmemcached =========="
#wget https://launchpad.net/libmemcached/1.0/1.0.18/+download/libmemcached-1.0.18.tar.gz
#tar xzf libmemcached-1.0.18.tar.gz && cd libmemcached-1.0.18
#./configure --enable-sasl
#make && make install
#cd .. && rm -fr libmemcached-1.0.18*

echo "=========== Installing librabbitmq ============"
#wget https://github.com/alanxz/rabbitmq-c/releases/download/v0.5.2/rabbitmq-c-0.5.2.tar.gz
#tar xzf rabbitmq-c-0.5.2.tar.gz 
#cd rabbitmq-c-0.5.2 && mkdir build && cd build
#cmake ..
#cmake --build . --target install
#ln -s /usr/local/lib/x86_64-linux-gnu/librabbitmq.so /usr/local/lib/librabbitmq.so
#ln -s /usr/local/lib/x86_64-linux-gnu/librabbitmq.so.1 /usr/local/lib/librabbitmq.so.1
#cd ../.. && rm -rf rabbitmq-c*

echo "============ Installing phpenv ============="
git clone git://github.com/CHH/phpenv.git $HOME/phpenv
$HOME/phpenv/bin/phpenv-install.sh
echo 'export PATH=$HOME/.phpenv/bin:$PATH' >> $HOME/.bash_profile
echo 'eval "$(phpenv init -)"' >> $HOME/.bash_profile
rm -rf $HOME/phpenv

echo "============ Installing php-build =============="
git clone git://github.com/php-build/php-build.git $HOME/php-build
$HOME/php-build/install.sh
rm -rf $HOME/php-build
