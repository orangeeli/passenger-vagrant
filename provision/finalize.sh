#!/bin/bash
set -e
set -x

apt-get clean
rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
#rm -rf /provision
