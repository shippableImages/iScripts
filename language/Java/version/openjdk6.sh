#!/bin/bash -e

# Install OpenJDK 6
sudo apt-get install -y openjdk-6-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-6-openjdk-amd64/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-6-openjdk-amd64/jre/bin/javaws

# Set JAVA_HOME variable
sed '/^JAVA_HOME/d' /etc/environment > /tmp/java_home.txt
mv /tmp/java_home.txt /etc/environment
echo 'JAVA_HOME=/usr/lib/jvm/java-6-openjdk-amd64' >> /etc/environment

# ant

# maven

# gradle
