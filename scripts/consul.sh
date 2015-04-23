#!/usr/bin/env bash

set -e

echo "Fetching Consul..."

cd /tmp
wget https://dl.bintray.com/mitchellh/consul/$CONSUL_VERSION_linux_amd64.zip -O consul.zip

echo "Installing Consul..."
unzip consul.zip >/dev/null
sudo chmod +x consul
sudo mv consul /usr/local/bin/consul
sudo mkdir -p /etc/consul.d
sudo mkdir -p /mnt/consul
sudo mkdir -p /etc/service

