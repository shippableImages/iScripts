#!/bin/bash -e

# Install OpenJDK 6
sudo apt-get install -y openjdk-6-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-6-openjdk-amd64/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/javaws

# Set JAVA_HOME variable
echo 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/lib/jvm/java-6-openjdk-amd64/jre/bin' >> $HOME/.bashrc

# ant
sudo wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
sudo tar xzf apache-ant-1.9.4-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.4-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.4' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.4/bin' >> $HOME/.bashrc

# maven

# gradle
