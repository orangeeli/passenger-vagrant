#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
source /home/vagrant/provision/scripts/group_exists
set -x

## Create a user for the web app.

#group_exists(){
#  local result=$(grep -ic "^$1:" /etc/group)
  # echo "$result"
#  [ $result -eq 1 ]
#}

#user_exists(){
#  local result=$(grep -ic "^$1:" /etc/passwd)
  # echo "$result"
#  [ $result -eq 1 ]
#}

main(){
  local group="app"
  local user="app"

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

  echo "Checking if the user exists already."
  if user_exists $user;
  then
    echo "The user app exists"
  else
    echo "The user app does not exist"
    adduser --uid 9999 --gid 9999 --disabled-password --gecos "Application" app
  fi

  usermod -L app
  mkdir -p /home/app/.ssh
  chmod 700 /home/app/.ssh
  chown app:app /home/app/.ssh
}

main
