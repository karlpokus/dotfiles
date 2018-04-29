#!/bin/bash
# stolen from http://blog.smalleycreative.com/tutorials/using-git-and-github-to-manage-your-dotfiles/
# This script creates symlinks from the home directory to any desired dotfiles in $dir
# places old files in $olddir as backup

# Todos
# [ ] fix repeated use. Don't move previously added symlinks to ~ too
# [ ] get files from /src with $(ls)

# Requirements
# - this repo in ~/dotfiles
# - can be run from anywhere

dir=~/dotfiles
olddir=~/dotfiles_old
files=".bash_profile .vimrc .gitconfig .tmux.conf"

# create dotfiles_old in homedir - idempotent
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -pv $olddir && echo "done"

# move any existing dotfiles in homedir to dotfiles_old directory, then create symlinks
for file in $files; do
  echo "Moving any existing dotfile in ~ to $olddir"
  mv -v ~/$file $olddir
  echo "Creating symlink to $file in ~"
  ln -sv $dir/src/$file ~/$file
done
