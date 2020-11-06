#!/usr/bin/env bash
#
# Automatic installation of programs and copy of dotfiles
#
#

sudo pacman --noconfirm -Syyu
sudo pacman --noconfirm -S yay firefox code
yay --answerclean a --answerdiff n -S cava-git ncspot-git pywal-git