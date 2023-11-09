#!/bin/bash

sudo chown prometheus:prometheus /homeProm/prometheus
sudo chown prometheus:prometheus /usr/local/bin/prometheus
sudo chown prometheus:prometheus /usr/local/bin/promtool
sudo chown -R prometheus:prometheus /homeProm/prometheus/consoles
sudo chown -R prometheus:prometheus /homeProm/prometheus/console_libraries
sudo chown -R prometheus:prometheus /var/lib/prometheus
