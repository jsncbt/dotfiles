#!/bin/bash

# pip
sudo python get-pip.py

# virtual environments
sudo pip install virtualenv

# virtual environment wrapper
sudo pip install virtualenvwrapper

echo "Add the virtual environments locationt to your bash"
echo "source /usr/local/bin/virtualenvwrapper.sh"
echo "export WORKON_HOME=~/workspace/python/environments"
