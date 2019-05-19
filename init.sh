#!/bin/bash

# stolen from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# This script creates symlinks from a dotfile to the users home dir
# If the dotfile already exists - but is no symlink - we move it to a backup dir

# Requirements
# this repo in ~/dotfiles
# can be run from anywhere

dir=~/dotfiles
backup=/tmp/dotfiles_old
targets=".bash_profile .vimrc .gitconfig .tmux.conf .vim"

# create backup dir if neccessary
mkdir -pv $backup

# move any non-links to backup and create symlinks
for target in $targets; do
  if test -e ~/$target; then # file exists
    if test ! -h ~/$target; then # file is no symlink
      echo "moving $target to $backup and creating a symlink"
      mv -iv ~/$target $backup
      ln -sv $dir/src/$target ~/$target
    else
      echo "no op $target is symlink"
    fi
  else
    echo "creating symlink for $target"
    ln -sv $dir/src/$target ~/$target
  fi
done
echo done
