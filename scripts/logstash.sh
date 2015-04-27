#!/usr/bin/env bash

set -e

echo "Fetching Logstash..."
cd /tmp
curl -O http://download.elastic.co/logstash/logstash/logstash-$LOGSTASH_VERSION.tar.gz

echo "Installing Logstash..."
tar xfz logstash-$LOGSTASH_VERSION.tar.gz
mv logstash-$LOGSTASH_VERSION /opt/logstash
