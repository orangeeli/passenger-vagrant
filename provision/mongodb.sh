#!/bin/bash
set -e
source /home/vagrant/provision/buildconfig
source /home/vagrant/provision/scripts/permission
set -x

## Install mongodb

install_mongo(){
  sudo apt-get update
  apt-get install -y mongodb-org
}

fix_locale_issue(){
  ## because of this
  ## http://stackoverflow.com/questions/26337557/badvalue-invalid-or-no-user-locale-set-please-ensure-lang-and-or-lc-environme
  echo "export LANGUAGE=en_US.UTF-8" >> /home/vagrant/.bashrc
  echo "export LANG=en_US.UTF-8" >> /home/vagrant/.bashrc
  echo "export LC_ALL=en_US.UTF-8" >> /home/vagrant/.bashrc
  export LANGUAGE=en_US.UTF-8
  export LANG=en_US.UTF-8
  export LC_ALL=en_US.UTF-8
  locale-gen en_US.UTF-8
  dpkg-reconfigure locales
}

disable_thp(){
  ## https://docs.mongodb.org/manual/tutorial/transparent-huge-pages/
  cp /home/vagrant/provision/config/disable-transparent-hugepages /etc/init.d/
  set_exec_permission "/etc/init.d/disable-transparent-hugepages"
  update-rc.d disable-transparent-hugepages defaults
}

main(){
  install_mongo
  fix_locale_issue
  disable_thp
}

main
