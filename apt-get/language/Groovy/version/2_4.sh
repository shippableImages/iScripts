#!/bin/bash -e

# Make sure Java is installed
java_version=$(java -version 2>&1 | awk -F '"' '/version/ {print $2}')
if [[ -z "$java_version" ]]; then
  echo "Groovy needs Java to be installed on your system. Exiting."
  exit 1
fi

# Install groovy
curl -s http://get.gvmtool.net | bash
source $HOME/.gvm/bin/gvm-init.sh
printf 'y\n' | gvm install groovy 2.4.3
