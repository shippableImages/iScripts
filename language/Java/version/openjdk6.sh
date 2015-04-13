#!/bin/bash -e

# Install OpenJDK 6
sudo apt-get install -y openjdk-6-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-6-openjdk-amd64/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/javaws

# Set JAVA_HOME variable
sudo echo 'export JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64' >> $HOME/.bash_profile
sudo echo 'export PATH=$PATH:/usr/lib/jvm/java-6-openjdk-amd64/jre/bin' >> $HOME/.bash_profile

# ant

# maven

# gradle
