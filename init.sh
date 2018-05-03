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

# create backup dir
mkdir -pv $backup && echo "backup dir created"

# move any existing targets in ~ to backup and create symlinks
echo "moving existing targets to backup dir and symlinking"
for target in $targets; do
  mv -iv ~/$target $backup
  ln -sv $dir/src/$target ~/$target
done
echo done
