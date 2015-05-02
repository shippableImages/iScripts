#!/bin/bash -e

sudo wget http://static.rust-lang.org/dist/rust-0.10-x86_64-unknown-linux-gnu.tar.gz
sudo tar xf rust-0.10-x86_64-unknown-linux-gnu.tar.gz
cd rust-0.10-x86_64-unknown-linux-gnu
sudo ./install.sh
cd .. && rm -rf rust-*
