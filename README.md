# Vagrant base bash provisioning for Node.js web apps

<!-- Should change the image hosting to one of own. -->
<center><img src="http://blog.phusion.nl/wp-content/uploads/2012/07/Passenger_chair_256x256.jpg" width="196" height="196" alt="Phusion Passenger"> <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/87/Vagrant.png/394px-Vagrant.png" width="161" height="196" alt="Vagrant"></center>

Based on the project passenger docker, the aim of this project is to provide a base development environment for nodejs web apps, with [Phusion Passenger](https://www.phusionpassenger.com/) and [Vagrant](https://vagrant.com). If you're looking for a deployment environment, be sure to go to [Passenger Docker](https://github.com/phusion/passenger-docker).

# How to get the box
The box is publicly available on this link, [trusty_panomo](https://atlas.hashicorp.com/orangeeli/boxes/trusty_panomo/), (*pa* - passenger; *no* - nodejs; *mo* - mongo).

## Requirements
* [Vagrant (1.8.1)](https://www.vagrantup.com/)
* [Virtualbox (5.0.2)](https://www.virtualbox.org/wiki/Downloads)

## What does it have
* ubuntu 14.04 - You can change the version [here](https://github.com/orangeeli/passenger-vagrant/blob/master/Vagrantfile)
* nodejs 5 - You can change the version [here](https://github.com/orangeeli/passenger-vagrant/blob/master/provision/enable_repos.sh)
* passenger-nginx 5 - You can change the version [here](https://github.com/orangeeli/passenger-vagrant/blob/master/provision/enable_repos.sh)
* mongodb 3.2 - You can change the version [here](https://github.com/orangeeli/passenger-vagrant/blob/master/provision/enable_repos.sh)

### Status
[![Build Status](https://travis-ci.org/orangeeli/passenger-vagrant.svg?branch=master)](https://travis-ci.org/orangeeli/passenger-vagrant)

## License
[MIT License](http://www.opensource.org/licenses/mit-license.php)

**[Follow me (@orangeeli) on Twitter!](https://twitter.com/orangeeli)**
