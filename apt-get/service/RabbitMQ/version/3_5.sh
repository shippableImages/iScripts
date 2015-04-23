#!/bin/bash -e

# Install prerequisites
sudo apt-get install -y erlang

# Install RabbitMQ
sudo wget https://www.rabbitmq.com/releases/rabbitmq-server/v3.5.1/rabbitmq-server_3.5.1-1_all.deb
sudo dpkg -i rabbitmq-server_3.5.1-1_all.deb
sudo apt-get install -y -f
sudo rm -f rabbitmq-server_3.5.1-1_all.deb
