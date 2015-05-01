#!/bin/bash -e

# Install Julia
sudo wget --content-disposition https://status.julialang.org/download/linux-x86_64
sudo mkdir /usr/local/julia
sudo tar xf julia-*.tar.gz -C /usr/local/julia --strip-components 1
sudo ln -s /usr/local/julia/bin/julia /usr/local/bin/julia
sudo rm -f julia-*.tar.gz
