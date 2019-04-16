#!/bin/bash
## Script for installing various favorite Linux packages on an Arch system
packages=(
  bat
  bpython
  exa
  fish
  fzf
  gparted
  neofetch
  rxvt-unicode
  vim
)

sudo pacman -Syu && sudo pacman -S ${packages[*]}

## Install Vim extensions
mkdir -p ~/.vim/pack/jasper-zanjani/start/ && cd $_
GITURL='https://github.com'
git clone $GITURL"/itchyny/lightline.vim.git" 
git clone $GITURL"/scrooloose.nerdtree.git" 
git clone $GITURL"/plasticboy/vim-markdown.git" 
git clone $GITURL"/terryma/vim-multiple-cursors.git" 
git clone $GITURL"/digitaltoad/vim-pug"

