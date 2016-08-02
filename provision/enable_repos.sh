#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

## Phusion Passenger
echo deb https://oss-binaries.phusionpassenger.com/apt/passenger trusty main > /etc/apt/sources.list.d/passenger.list

## OpenJDK 8 PPA
echo deb http://ppa.launchpad.net/openjdk-r/ppa/ubuntu trusty main > /etc/apt/sources.list.d/openjdk8.list

## Mongo DB 3.0 PPA
#echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list

echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.2 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.2.list


# The recv-keys part takes a bit of time, so it's faster to receive multiple keys at once.
#
# Phusion Passenger
# OpenJDK 8 PPA
# Mongo
apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys \
	561F9B9CAC40B2F7 \
	DA1A4A13543B466853BAF164EB9B1D8886F44E2A \
	EA312927

#apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10

## NodeSource's Node.js repository
## This also runs apt-get update
#curl --fail -ssL -o /tmp/setup-nodejs https://deb.nodesource.com/setup_0.12
curl --fail -ssL -o /tmp/setup-nodejs https://deb.nodesource.com/setup_6.x
bash /tmp/setup-nodejs
rm -f /tmp/setup-nodejs
