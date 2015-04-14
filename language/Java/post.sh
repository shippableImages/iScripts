#!/bin/bash -e

# Get Java version
java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')

# Install Apache Ant
sudo wget http://mirror.cogentco.com/pub/apache//ant/binaries/apache-ant-1.9.4-bin.tar.gz
sudo tar xzf apache-ant-1.9.4-bin.tar.gz -C /usr/local && rm -f apache-ant-1.9.4-bin.tar.gz
echo 'export ANT_HOME=/usr/local/apache-ant-1.9.4' >> $HOME/.bashrc
echo 'export PATH=$PATH:/usr/local/apache-ant-1.9.4/bin' >> $HOME/.bashrc

# Install Apache Maven
if [[ $java_version =~ 1.6 ]]; then
  sudo wget http://mirrors.ibiblio.org/apache/maven/maven-3/3.2.5/binaries/apache-maven-3.2.5-bin.tar.gz
  sudo tar xzf apache-maven-3.2.5-bin.tar.gz -C /usr/local && rm -f apache-maven-3.2.5-bin.tar.gz
  echo 'export PATH=$PATH:/usr/local/apache-maven-3.2.5/bin' >> $HOME/.bashrc
else
  sudo wget http://mirror.symnds.com/software/Apache/maven/maven-3/3.3.1/binaries/apache-maven-3.3.1-bin.tar.gz 
  sudo tar xzf apache-maven-3.3.1-bin.tar.gz -C /usr/local && rm -f apache-maven-3.3.1-bin.tar.gz
  echo 'export PATH=$PATH:/usr/local/apache-maven-3.3.1/bin' >> $HOME/.bashrc
fi

# Install Gradle
sudo wget https://services.gradle.org/distributions/gradle-2.3-all.zip
unzip -qq gradle-2.3-all.zip -d /usr/local && rm -f gradle-2.3-all.zip
echo 'export PATH=$PATH:/usr/local/gradle-2.3/bin' >> $HOME/.bashrc
