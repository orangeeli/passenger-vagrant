#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
set -x

## Create a user for the web app.

group_exists(){
  local result=$(grep -ic "^$1:" /etc/group)
  # echo "$result"
  [ $result -eq 1 ]
}

group="app"

if group_exists $group;
then
  echo "The group app exists"
else
  echo "The group app does not exist"
  addgroup --gid 9999 app
fi

adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app
usermod -L app
mkdir -p /home/app/.ssh
chmod 700 /home/app/.ssh
chown app:app /home/app/.ssh
