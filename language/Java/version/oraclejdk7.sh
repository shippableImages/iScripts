#!/bin/bash -e

# Install Oracle JDK 7
sudo echo oracle-java7-installer shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
sudo apt-get install -y oracle-java7-installer
sudo update-alternatives --set java /usr/lib/jvm/java-7-oracle/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-7-oracle/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-7-oracle/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-7-oracle' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-7-oracle/jre/bin' >> $HOME/.bashrc
