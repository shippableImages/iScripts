#!/bin/bash -e

VERSION=5.1.72

# Preconfiguration setup
sudo apt-get install -y libncurses5-dev
sudo groupadd mysql
sudo useradd -g mysql mysql

# Install MySQL 5.1
sudo wget http://downloads.mysql.com/archives/get/file/mysql-$VERSION.tar.gz
sudo tar xzf mysql-$VERSION.tar.gz && sudo rm -f mysql-$VERSION.tar.gz
cd mysql-$VERSION
sudo ./configure --prefix=/usr/local/mysql
sudo make && sudo make install

# Postinstallation setup
cd /usr/local/mysql
sudo chown -R mysql .
sudo chgrp -R mysql .
sudo bin/mysql_install_db --user=mysql
sudo cp share/mysql/mysql-server /etc/init.d/mysql
echo 'export PATH=$PATH:/usr/local/mysql/bin' >> $HOME/.bashrc
