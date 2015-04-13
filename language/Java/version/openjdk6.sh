#!/bin/bash -e

# Install OpenJDK 6
sudo apt-get install -y openjdk-6-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-6-openjdk-amd64/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/javaws

# Set JAVA_HOME variable
env_file=/etc/profile
tmp_file=/tmp/env.txt
sudo sed '/^export JAVA_HOME/d' $env_file > $tmp_file
sudo echo 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64' >> $tmp_file
sudo mv $tmp_file $env_file
source $env_file

# ant

# maven

# gradle
