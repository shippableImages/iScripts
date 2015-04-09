#!/bin/bash -e

# Install Python 2.7
sudo apt-get install -y python python-dev libffi-dev libssl-dev

# Install virtualenv
sudo wget https://bitbucket.org/pypa/setuptools/raw/bootstrap/ez_setup.py -O /tmp/ez_setup.py
sudo python2.7 /tmp/ez_setup.py
sudo easy_install-2.7 pip
pip2.7 install virtualenv
virtualenv -p python $HOME/venv/2.7

# Install pip packages
. $HOME/venv/2.7/bin/activate
pip install pyopenssl ndg-httpsclient pyasn1
pip install nose mock pytest coverage
pip install lxml==3.1.2
deactivate

