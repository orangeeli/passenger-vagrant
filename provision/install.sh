#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
source /home/vagrant/provision/scripts/permission
set -x

main(){
  local path="/home/vagrant/provision"
  run_script "$path/enable_repos.sh"
  run_script "$path/prepare.sh"
  run_script "$path/utilities.sh"
  run_script "$path/nodejs.sh"
  run_script "$path/nginx-passenger.sh"
  run_script "$path/finalize.sh"
}

main
