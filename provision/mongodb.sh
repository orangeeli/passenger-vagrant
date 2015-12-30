#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

## Install mongodb
apt-get install -y mongodb-org
