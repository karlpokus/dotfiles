#!/bin/bash

# stolen from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# This script creates symlinks from the home directory to any desired dotfiles in $dir
# places old files in $olddir as backup

# Todos
# make idempotent

# Requirements
# this repo in ~/dotfiles
# can be run from anywhere

dir=~/dotfiles
backup=~/dotfiles_old
targets=".bash_profile .vimrc .gitconfig .tmux.conf .vim"

echo "running init.."

# create backup dir if neccessary
mkdir -pv $backup 

# move any existing targets in ~ to backup and create symlinks
echo "moving any existing files to backup dir before symlinking"
for target in $targets; do
    if [ -f ~/$target ]; then
        mv -iv ~/$target $backup
        ln -sv $dir/src/$target ~/$target
    fi
done
echo done
