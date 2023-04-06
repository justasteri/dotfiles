#!/bin/bash

# Be sure to be in ~/dotfiles/installation

sudo apt-get update && sudo apt-get upgrade &&                                                                          # Update system
xargs -a packages.txt sudo apt-get install &&                                                                           # Install pacman packages
sudo snap install code --classic &&                                                                                     # Install VSCode
sh ~/dotfiles/.installation/make-symlinks.sh &&                                                                         # Make symlinks for dotfiles
sudo apt-get autoremove &&                                                                                              # Remove unused packages
sh ../manual_installation.sh                                                                                               # Install packages manually
