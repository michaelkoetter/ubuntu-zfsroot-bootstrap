#!/bin/bash

add-apt-repository "deb http://archive.ubuntu.com/ubuntu $(lsb_release -sc) universe"
apt-get update && apt-get install -y git python3-pip
pip3 install ansible

cd /tmp
git clone https://github.com/michaelkoetter/ubuntu-zfsroot-bootstrap.git
cd /tmp/ubuntu-zfsroot-bootstrap
nano /tmp/ubuntu-zfsroot-bootstrap/group_vars/all
ansible-playbook -i inventory bootstrap.yml
