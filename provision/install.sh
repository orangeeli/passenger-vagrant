#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

chmod 755 /home/vagrant/provision/enable_repos.sh
/home/vagrant/provision/enable_repos.sh
chmod 755 /home/vagrant/provision/prepare.sh
/home/vagrant/provision/prepare.sh
chmod 755 /home/vagrant/provision/utilities.sh
/home/vagrant/provision/utilities.sh
chmod 755 /home/vagrant/provision/nodejs.sh
/home/vagrant/provision/nodejs.sh
chmod 755 /home/vagrant/provision/nginx-passenger.sh
/home/vagrant/provision/nginx-passenger.sh
chmod 755 /home/vagrant/provision/finalize.sh
/home/vagrant/provision/finalize.sh
