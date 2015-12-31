#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
source /etc/environment
set -x

## Install Phusion Passenger.
apt-get install -y nginx-extras passenger

cp /home/vagrant/provision/config/30_presetup_nginx.sh /etc/init.d/
cp /home/vagrant/provision/config/nginx.conf /etc/nginx/nginx.conf
mkdir -p /etc/nginx/main.d
cp /home/vagrant/provision/config/nginx_main_d_default.conf /etc/nginx/main.d/default.conf

## Install Nginx runit service.
mkdir /etc/service/nginx
cp /home/vagrant/provision/runit/nginx /etc/service/nginx/run
touch /etc/service/nginx/down

#mkdir /etc/service/nginx-log-forwarder
#cp runit/nginx-log-forwarder /etc/service/nginx-log-forwarder/run
