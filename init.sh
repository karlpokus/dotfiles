#!/bin/bash

# stolen from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# This script creates symlinks from the home directory to any desired dotfiles in $dir
# places old files in $olddir as backup

# Todos
# fix repeated use. Don't move previously added symlinks to ~ too
# make idempotent

# Requirements
# - this repo in ~/dotfiles
# - can be run from anywhere

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bash_profile .vimrc .gitconfig .tmux.conf"

# create backup dir
echo "creating $olddir"
mkdir -pv $olddir && echo done

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
echo "moving dotfiles to $olddir and symlinking"
for file in $files; do
  mv -iv ~/$file $olddir
  ln -sv $dir/src/$file ~/$file
done
echo done

# move ~/.vim to backup
echo "moving ~/.vim to $olddir and symlinking"
mv -iv ~/.vim $olddir 
ln -sv $dir/vim/.vim ~/.vim 
echo done
