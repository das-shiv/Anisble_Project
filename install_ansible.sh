#!/bin/bash
#This script will install ansible on an Ubuntu machine, run this script using the command ./install_ansible.sh
sudo apt update -y
sudo apt install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible -y
sudo apt install ansible -y
