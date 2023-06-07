#!/usr/bin/env bash
apt update
apt install software-properties-common
apt-add-repository ppa:ansible/ansible
apt update
apt install ansible
# Ansible bash completion support
apt install python3-argcomplete
activate-global-python-argcomplete3
# Check
echo $(ansible --version)
