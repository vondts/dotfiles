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
sudo pacman --noconfirm -Rcs picom palemoon-bin

##---Install Packages---##
echo installing packages...
sudo pacman --noconfirm -S yay firefox code kitty vlc neofetch libreoffice-fresh python-pywal rofi
yay --answerclean a --answerdiff n -S cava-git ncspot-git bpytop-git cmatrix polybar tty-clock lightcord-git picom-tryone-git stacer-git

##---Install oh-my-zsh and plugins---##
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc

##---Copy Dotfiles---##
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/neofetch ~/.config/
cp -r ~/dotfiles/polybar ~/.config/
cp -r ~/dotfiles/picom.conf ~/.config/
cp -r ~/dotfiles/wallpapers ~/
cp -r ~/dotfiles/.zshrc ~/.zshrc

##---Config zsh---##

kitty -e zsh