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

# Install Apache Ant
sudo wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
sudo tar xzf apache-ant-1.9.4-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.4-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.4' >> $HOME/.bashrc

# Install Apache Maven
sudo wget http://mirror.symnds.com/software/Apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz 
sudo tar xzf apache-maven-3.3.1-bin.tar.gz -C /usr/local && rm -f apache-maven-3.3.1-bin.tar.gz

# Install Gradle
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip

# Update system path
echo 'export PATH=$PATH:/usr/lib/jvm/java-7-oracle/jre/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.4/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-maven-3.3.1/bin' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc
