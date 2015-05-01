#!/bin/bash -e

# Install Julia
sudo wget https://julialang.s3.amazonaws.com/bin/linux/x64/0.3/julia-0.3.7-linux-x86_64.tar.gz
sudo mkdir /usr/local/julia
sudo tar xf julia-0.3.7-linux-x86_64.tar.gz -C /usr/local/julia --strip-components 1
sudo ln -s /usr/local/julia/bin/julia /usr/local/bin/julia
sudo rm -f julia-0.3.7-linux-x86_64.tar.gz
