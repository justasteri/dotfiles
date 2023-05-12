#!/bin/bash

# Be sure to be in ~/dotfiles/installation

# sudo pacman-mirrors -g &&
sudo pacman -Syyu &&
xargs -a packages.txt sudo pacman -S &&
xargs -a yay_packages.txt yay -S &&
sh ./manual_installation.sh &&
sudo pacman -Rsn $(pacman -Qdtq) &&
sh ~/make-symlinks.sh &&
fc-cache