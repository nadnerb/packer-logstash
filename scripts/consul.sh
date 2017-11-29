#!/usr/bin/env bash

set -e

echo "Fetching Consul..."

cd /tmp
curl -L -o consul.zip https://releases.hashicorp.com/consul/${CONSUL_VERSION}/consul_${CONSUL_VERSION}_linux_amd64.zip

echo "Installing Consul..."
unzip consul.zip >/dev/null
sudo chmod +x consul
sudo mv consul /usr/local/bin/consul
sudo mkdir -p /etc/consul.d
sudo mkdir -p /mnt/consul
sudo mkdir -p /etc/service

echo "Fetching Consul template..."
curl -L -o consul_template.tar.gz https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.tgz

echo "installing Consul template..."
tar xfz consul_template.tar.gz
sudo mv consul-template /usr/local/bin/consul-template
sudo mkdir -p /etc/consul-template.d
