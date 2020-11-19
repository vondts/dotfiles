#!/usr/bin/env bash
#
# Automatic installation of programs and copy of dotfiles
#
#

##---Removing Packages---##
sudo pacman -Rcs picom palemoon-bin

##---Updating System---##
echo updating system...
sudo pacman --noconfirm -Syu

##---Install Pulseaudio---##
echo installing pulseaudio...
install_pulse

##---Install Packages---##
echo installing packages...
sudo pacman --noconfirm -S yay firefox code kitty neofetch libreoffice-fresh python-pywal rofi redshift discord python steam
yay --answerclean a --answerdiff n -S cava-git ncspot-git bpytop-git polybar-git picom-tryone-git stacer-git plymouth

##---Install oh-my-zsh and plugins---##
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
yay -S --noconfirm zsh-theme-powerlevel10k-git
echo 'source /usr/share/zsh-theme-powerlevel10k/powerlevel10k.zsh-theme' >>! ~/.zshrc
git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
##---Install pywalfox---##
pip install pywalfox
pywalfox install

##---Copy Dotfiles---##
cp -r ~/dotfiles/.i3 ~/
cp -r ~/dotfiles/kitty ~/.config/
cp -r ~/dotfiles/neofetch ~/.config/
cp -r ~/dotfiles/polybar ~/.config/
cp -r ~/dotfiles/picom.conf ~/.config/
cp -r ~/dotfiles/wallpapers ~/
