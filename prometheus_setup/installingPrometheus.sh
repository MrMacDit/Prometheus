#!/bin/bash

sudo groupadd --system prometheus
sudo useradd -s /sbin/nologin --system -g prometheus prometheus

wget https://github.com/prometheus/prometheus/releases/download/v2.43.0/prometheus-2.43.0.linux-amd64.tar.gz