#!/bin/bash -e

VERSION=17.1

# Install dependencies
sudo apt-get install -y libssl-dev libncurses5-dev

# Install Erlang
sudo wget https://packages.erlang-solutions.com/erlang/esl-erlang-src/otp_src_${VERSION}.tar.gz
tar xzf otp_src_${VERSION}.tar.gz && cd otp_src_${VERSION}
export ERL_TOP=`pwd`
export LANG=C
./configure --without-java
make && sudo make install
cd .. && sudo rm -rf otp_src_${VERSION}*
