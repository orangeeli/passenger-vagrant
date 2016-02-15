#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

## Install mongodb

sudo apt-get update
apt-get install -y mongodb-org

## because of this
## http://stackoverflow.com/questions/26337557/badvalue-invalid-or-no-user-locale-set-please-ensure-lang-and-or-lc-environme
export LANGUAGE=en_US.UTF-8
export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
locale-gen en_US.UTF-8
dpkg-reconfigure locales
