#!/bin/bash -eux

set -e

# Updating and Upgrading dependencies
export DEBIAN_FRONTEND=noninteractive
apt-get update -y -qq > /dev/null
apt-get upgrade -y -qq > /dev/null
sudo apt-get install -y vim curl wget unzip screen
