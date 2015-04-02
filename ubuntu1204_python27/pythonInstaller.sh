#!/bin/bash -e

echo "============ install python prereqs==============";
add-apt-repository -y ppa:fkrull/deadsnakes;
apt-get update;
apt-get install python-pip python-dev python-virtualenv;

echo "========= Installing python packages ================"
sudo pip install pika pyyaml paramiko coverage nose pytest tox docopt python-daemon mock;
sudo pip install http://lxml.de/files/lxml-3.3.1pre.tar.gz;

echo "============ downloading pypy ==============";
cd /opt && sudo wget https://bitbucket.org/pypy/pypy/downloads/pypy-2.2.1-linux64.tar.bz2 && sudo tar -xjvf pypy-2.2.1-linux64.tar.bz2;

echo "============== creating symlink for pypy ===============";
sudo ln -sf /opt/pypy-2.2.1-linux64/bin/pypy /usr/local/bin/pypy;

echo "========== Installing packages in python VEs ==========================";
sudo su - shippable -c "virtualenv -p /usr/bin/python2.7 /home/shippable/build_ve/python/2.7 && . /home/shippable/build_ve/python/2.7/bin/activate && pip install nose"
sudo su - shippable -c "virtualenv -p /usr/bin/python2.7 /home/shippable/build_ve/python/2.7 && . /home/shippable/build_ve/python/2.7/bin/activate && pip install mock"
sudo su - shippable -c "virtualenv -p /usr/bin/python2.7 /home/shippable/build_ve/python/2.7 && . /home/shippable/build_ve/python/2.7/bin/activate && pip install pytest"