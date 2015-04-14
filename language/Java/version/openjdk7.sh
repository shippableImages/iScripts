#!/bin/bash -e

# Install OpenJDK 7
sudo apt-get install -y openjdk-7-jdk
sudo update-alternatives --set java /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/java
sudo update-alternatives --set javac /usr/lib/jvm/java-7-openjdk-amd64/bin/javac
sudo update-alternatives --set javaws /usr/lib/jvm/java-7-openjdk-amd64/jre/bin/javaws
echo 'export JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64' >> $HOME/.bashrc

# Install Apache Ant
sudo wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
sudo tar xzf apache-ant-1.9.4-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.4-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.4' >> $HOME/.bashrc

# Install Apache Maven
sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && rm -f apache-maven-3.2.5-bin.tar.gz

# Install Gradle
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip

# Update system path
echo 'export PATH=$PATH:/usr/lib/jvm/java-7-openjdk-amd64/jre/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.4/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-maven-3.2.5/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc
