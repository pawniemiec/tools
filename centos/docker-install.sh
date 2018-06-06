#!/bin/bash

set -e

# Install pip
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
sudo pip install --upgrade --force-reinstall pip==9.0.3

# Install docker
sudo yum install -y yum-utils device-mapper-persistent-data lvm2
sudo yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
sudo yum-config-manager --enable docker-ce-edge
sudo yum-config-manager --enable docker-ce-test
sudo yum install -y docker-ce git
sudo systemctl enable docker
sudo systemctl start docker

# Install docker-compose
pip install docker-compose

# Upgrade pip
pip install --upgrade pip
