#!/bin/bash
## Script for installing various favorite Linux packages on an Arch system
packages=(
  bat
  bpython
  dmenu
  exa
  fish
  fzf
  i3
  gparted
  neofetch
  polybar
  qbittorrent
  rxvt-unicode
  vim
)

sudo pacman -Syu && sudo pacman -S ${packages[*]}
yay -S rakudo

## Install Vim extensions
mkdir -p ~/.vim/pack/jasper-zanjani/start/ && cd $_
git clone "https://github.com/itchyny/lightline.vim" 
git clone "https://github.com/scrooloose/nerdtree" 
git clone "https://github.com/plasticboy/vim-markdown" 
git clone "https://github.com/terryma/vim-multiple-cursors" 
git clone "https://github.com/digitaltoad/vim-pug"
git clone "https://github.com/junegunn/limelight.vim"
