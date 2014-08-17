#!/bin/bash

###############################################################################
# script that sets up my machine the way I like it, combination of .files
###############################################################################
# http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# https://github.com/mathiasbynens/dotfiles

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.script` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

###############################################################################
# install required things
###############################################################################
# Requires XCode to be installed manually

# oh-my-zsh
curl -L http://install.ohmyz.sh | sh
mv ~/.oh-my-zsh ~/.dotfiles/oh-my-zsh
mv ~/.zshrc ~/.dotfiles/zshrc

# brew
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
brew doctor

###############################################################################
# set os defaults 
###############################################################################
# bash osx


###############################################################################
# variables
###############################################################################
dir=~/.dotfiles                    # dotfiles directory
olddir=~/dotfiles_old              # old dotfiles backup directory
files="vimrc zshrc gitignore aliases functions"    # list of files to symlink in homedir
files="${files} vim oh-my-zsh"    # list of folders to symlink in homedir


###############################################################################
# create dotfiles_old in homedir
###############################################################################
# echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"


###############################################################################
# change to the dotfiles directory
###############################################################################
# echo "Changing to the $dir directory"
cd $dir
echo "...done"


###############################################################################
# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks 
###############################################################################
for file in $files; do
    # echo "Moving any existing dotfiles from ~ to $olddir"
    if [ -e ".$file" ]
    then
        mv ~/.$file ~/dotfiles_old/
    fi
    # echo "Creating symlink to $file in home directory."
    if [ -e "$dir/$file" ]
    then
        ln -s $dir/$file ~/.$file
    fi
done

###############################################################################
# create python stuff
###############################################################################

# python stuff
bash python/install.sh


