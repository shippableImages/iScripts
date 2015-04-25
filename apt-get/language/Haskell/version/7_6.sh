#!/bin/bash -e

# Install ghc
printf '\n' | sudo add-apt-repository ppa:hvr/ghc
sudo apt-get update
sudo apt-get install -y cabal-install-1.22 ghc-7.6.3

# Update path
echo 'export PATH=/opt/cabal/1.22/bin:/opt/ghc/7.6.3/bin:$PATH' >> $HOME/.bashrc
. $HOME/.bashrc
