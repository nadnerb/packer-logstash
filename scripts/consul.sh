#!/usr/bin/env bash

set -e

echo "Fetching Consul..."

cd /tmp
curl -L -o consul.zip https://dl.bintray.com/mitchellh/consul/${CONSUL_VERSION}_linux_amd64.zip

echo "Installing Consul..."
unzip consul.zip >/dev/null
sudo chmod +x consul
sudo mv consul /usr/local/bin/consul
sudo mkdir -p /etc/consul.d
sudo mkdir -p /mnt/consul
sudo mkdir -p /etc/service

echo "Fetching Consul template..."
curl -L -o consul_template.tar.gz https://github.com/hashicorp/consul-template/releases/download/v${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tar.gz

echo "installing Consul template..."
tar xfz consul_template.tar.gz
sudo mv consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64 /opt/consul-template
