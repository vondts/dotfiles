#!/usr/bin/env bash
#
# Automatic installation of programs and copy of dotfiles
#
#

##---Updating System---##
echo updating system...
sudo pacman --noconfirm -Syyu

##---Install Pulseaudio---##
echo installing pulseaudio...
install_pulse

##---Removing Packages---##
sudo pacman --noconfirm -Rcs picom

##---Install Packages---##
echo installing packages...
sudo pacman --noconfirm -S yay firefox code kitty vlc neofetch libreoffice-fresh python-pywal
yay --answerclean a --answerdiff n -S cava-git ncspot-git balena-etcher bpytop-git cmatrix polybar tty-clock lightcord-git picom-tryone-git stacer-git

##---Copy Dotfiles---##