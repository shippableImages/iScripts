#!/bin/bash

# Make sure Java is installed
java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
if [[ -z "$java_version" ]]; then
  echo "Android needs Java to be installed on your system. Exiting."
  exit 1
fi

# Install some dependencies needed for Ubuntu
if [[ $(dpkg --help) =~ "add-architecture" ]]; then
  sudo dpkg --add-architecture i386
fi
sudo apt-get update
sudo apt-get install -y ia32-libs 
sudo apt-get install -y libncurses5:i386 libstdc++6:i386 zlib1g:i386

# Install android
sudo wget http://dl.google.com/android/android-sdk_r24.1.2-linux.tgz
sudo tar xzf android-sdk_r24.1.2-linux.tgz -C /usr/local
sudo rm -f android-sdk_r24.1.2-linux.tgz

# Update path
echo 'export PATH=$PATH:/usr/local/android-sdk-linux/tools' >> $HOME/.bashrc
export PATH=$PATH:/usr/local/android-sdk-linux/tools

# Install platform tools, android platforms, and other add-ons
( sleep 5 && while [ 1 ]; do sleep 1; echo 'y'; done ) | android update sdk --no-ui
