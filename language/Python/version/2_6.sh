#!/bin/bash -e

# install python prereqs
add-apt-repository -y ppa:fkrull/deadsnakes;
apt-get update;
apt-get install -y libxml2 libxml2-dev libxslt1.1 libxslt1-dev \ 
                   python2.6 python2.6-dev python-pip python-dev python-virtualenv;

# Installing python packages 
sudo pip install pika pyyaml paramiko coverage nose pytest tox docopt python-daemon mock;
sudo pip install http://lxml.de/files/lxml-3.3.1pre.tar.gz;

# downloading pypy 
cd /opt && sudo wget https://bitbucket.org/pypy/pypy/downloads/pypy-2.2.1-linux64.tar.bz2 && sudo tar -xjvf pypy-2.2.1-linux64.tar.bz2;
sudo ln -sf /opt/pypy-2.2.1-linux64/bin/pypy /usr/local/bin/pypy;

# Installing nose in python VEs 
sudo su - shippable -c "virtualenv -p /usr/bin/python2.6 /home/shippable/build_ve/python/2.6 && . /home/shippable/build_ve/python/2.6/bin/activate && pip install nose"

# Installing mock in python VEs 
sudo su - shippable -c "virtualenv -p /usr/bin/python2.6 /home/shippable/build_ve/python/2.6 && . /home/shippable/build_ve/python/2.6/bin/activate && pip install mock"

# Installing pytest in python VEs 
sudo su - shippable -c "virtualenv -p /usr/bin/python2.6 /home/shippable/build_ve/python/2.6 && . /home/shippable/build_ve/python/2.6/bin/activate && pip install pytest"

