#!/bin/bash

###############################################################################
# script that sets up my machine the way I like it, combination of .files
###############################################################################
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/mathiasbynens/dotfiles


###############################################################################
# install required things
###############################################################################
# Requires XCode to be installed manually


###############################################################################
# set os defaults 
###############################################################################
bash osx


###############################################################################
# variables
###############################################################################
dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old              # old dotfiles backup directory
files="bashrc vimrc zshrc oh-my-zsh gitignore"    # list of files/folders to symlink in homedir


###############################################################################
# create dotfiles_old in homedir
###############################################################################
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"


###############################################################################
# change to the dotfiles directory
###############################################################################
echo "Changing to the $dir directory"
cd $dir
echo "...done"


###############################################################################
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
###############################################################################
for file in $files; do
    echo "Moving any existing dotfiles from ~ to $olddir"
    mv ~/.$file ~/dotfiles_old/
    echo "Creating symlink to $file in home directory."
    ln -s $dir/$file ~/.$file
done
