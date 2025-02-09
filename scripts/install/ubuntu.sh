#!/bin/sh
# scripts/install/ubuntu.sh
# @version v2025.2.9.0
# @author Kevin Jeffery

if [[ $# -ne 2 ]]; then
    echo "usage: ${0} user_name user_email" >&2
    exit 2
fi

# Install packages for python package and virtual environment managers
sudo apt-get update
sudo apt-get install -y python3-pip python3-venv

# Install packages for source code control, unzip, wget and ISO image creation
sudo apt-get install -y git unzip wget genisoimage

# Configure git global preferences
git config --global user.name "${1}"
git config --global user.email "${2}"
git config --global --list

# Generate an SSH ED22519 key
ssh-keygen -t ed25519 -C "${2}"

# Add GitHub SSH keys to known_hosts
touch ~/.ssh/known_hosts
ssh-keygen -R github.com 
ssh-keyscan -t rsa github.com >>~/.ssh/known_hosts
ssh-keyscan -t ed25519 github.com >>~/.ssh/known_hosts
ssh-keyscan -t ecdsa github.com >>~/.ssh/known_hosts

# Create virtual environment for the current user
python3 -m venv --upgrade-deps ~/venv

# Activate the virtual environment
source ~/venv/bin/activate

############# Install Ansible
python3 -m pip install wheel
python3 -m pip install ansible

# Install IBM ISAM Collection
python3 -m pip install ibmsecurity
ansible-galaxy collection install ibm.isam
