#!/usr/bin/env bash
#
# Automatic installation of programs and copy of dotfiles
#
#

sudo pacman --noconfirm -Syyu
install_pulse
sudo pacman --noconfirm -S yay firefox code kitty vlc neofetch libreoffice-fresh python-pywal
sudo pacman --noconfirm -Rcs picom
yay --answerclean a --answerdiff n -S cava-git ncspot-git balena-etcher bpytop-git cmatrix polybar tty-clock lightcord-git picom-tryone-git 