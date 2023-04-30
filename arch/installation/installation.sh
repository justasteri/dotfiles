#!/bin/bash

# Be sure to be in ~/dotfiles/installation

# sudo pacman-mirrors -g &&
sudo pacman -Syyu &&
xargs -a packages.txt sudo pacman -S &&
xargs -a yay_packages.txt yay -S &&
sh ~/make-symlinks.sh &&
# sudo ln -s /var/lib/snapd/snap /snap &&
sudo pacman -Rsn $(pacman -Qdtq) &&
sh ./manual_installation.sh &&
