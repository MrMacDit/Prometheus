#!/bin/bash

tar vxf prometheus*.tar.gz
cd prometheus-2.43.0.linux-amd64
sudo mv prometheus /usr/local/bin
sudo mv promtool /usr/local/bin
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
sudo mv -r consoles /homeProm/prometheus
sudo mv -r console_libraries /homeProm/prometheus
