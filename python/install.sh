#!/bin/bash

# PROFILE=~/.bash_profile
PROFILE=~/.zshrc

function install() {
	echo "Installing pip, virtualenv, virtualenvwrapper";

	# pip
	sudo python get-pip.py

	# virtual environments
	sudo pip install virtualenv

	# virtual environment wrapper
	sudo pip install virtualenvwrapper

	echo "Add the virtual environments locationt to your bash"
	echo "source /usr/local/bin/virtualenvwrapper.sh" >> $PROFILE
	echo "# export PYTHONPATH=$PYTHONPATH:$HOME/pylibi" >> $PROFILE
	echo "export WORKON_HOME=~/workspace/python/environments" >> $PROFILE
}

# check if workon is in our path already
if [ -e $PROFILE ]; then
	# echo "sourcing $PROFILE"
	source $PROFILE
fi

type workon &> /dev/null
if [ $? -eq 1 ]; then
	install
else 
	echo "pip, virtualenv, virtualenvwrapper already installed"
fi

# return type workon 2>/dev/null || { install; }
