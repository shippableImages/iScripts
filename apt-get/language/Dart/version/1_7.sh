#!/bin/bash -e

# Install Dart
sudo wget https://storage.googleapis.com/dart-archive/channels/stable/release/41096/sdk/dartsdk-linux-x64-release.zip
sudo unzip -qq dartsdk-linux-x64-release.zip -d /usr/local
sudo rm -f dartsdk-linux-x64-release.zip
echo 'export PATH=$PATH:/usr/local/dart-sdk/bin' >> $HOME/.bashrc
