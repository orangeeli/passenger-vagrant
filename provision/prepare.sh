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

main(){
  local group="app"

  # If you do vagrant reload provision, vagrant will run the provision on top of previous provisions
  # http://bytefreaks.net/gnulinux/bash/linux-check-if-a-user-or-a-group-exists
  # http://www.linuxjournal.com/content/return-values-bash-functions
  # http://stackoverflow.com/questions/29073210/how-to-check-if-a-group-exists-and-add-if-it-doesnt-in-linux-shell-script
  echo "Checking if the group exists already."
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
}

main
