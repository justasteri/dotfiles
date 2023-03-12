#!/bin/bash

# Be sure to be in ~/dotfiles/installation

sudo pacman-mirrors -g &&                         # Update mirrors
sudo pacman -Syyu &&                              # Update system
xargs -a packages.txt sudo pacman -S &&           # Install pacman packages
xargs -a yay_packages.txt yay -S &&               # Install yay packages
sh ~/dotfiles/.installation/make-symlinks.sh && # Make symlinks for dotfiles
sudo ln -s /var/lib/snapd/snap /snap &&           # Snap
sudo pacman -Rsn $(pacman -Qdtq) &&               # Remove unused packages
# sh manual_installation.sh &&                      # Install packages manually
