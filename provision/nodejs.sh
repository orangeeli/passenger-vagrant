#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

## Install Node.js (also needed for Rails asset compilation)
apt-get install -y nodejs
