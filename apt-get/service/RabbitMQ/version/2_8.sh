#!/bin/bash -e

# Install prerequisites
sudo apt-get install -y erlang

# Install RabbitMQ
sudo wget https://www.rabbitmq.com/releases/rabbitmq-server/v2.8.7/rabbitmq-server_2.8.7-1_all.deb
sudo dpkg -i rabbitmq-server_2.8.7-1_all.deb
sudo apt-get install -y -f
sudo rm -f rabbitmq-server_2.8.7-1_all.deb
