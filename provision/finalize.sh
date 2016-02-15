#!/bin/bash
set -e
set -x

# apt-get clean will clean downloaded and unused .deb packages
apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#rm -rf /provision
