#!/bin/bash

apt-add-repository -y ppa:ansible/ansible
apt-get update -y
apt-get install -y software-properties-common ansible sshpass

cd /vagrant

export RANCHER_SERVER_HOST=172.19.8.100
export RANCHER_PORT=8080
export SSH_PASS=vagrant
export SSH_USER=vagrant
export ADMIN_USER=admin
export ADMIN_PASS=admin

./provisionServer.sh 

export RANCHER_AGENT_HOST=172.19.8.101

./provisionAgent.sh
