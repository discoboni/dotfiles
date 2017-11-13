#!/bin/sh

#install pacaur AUR Package manager
./pacaur_installer.sh
#install necessary programs
#edit this line according to what package manager you are using
sudo pacman -S neovim rxvt-unicode git

#install 'vim-plug' - a plugin manager for NEOVIM
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pacaur -S polybar i3-gaps

#run the script to link configs to their respective paths
#Symbolic link, meaning I can edit the configs from the dotfiles folder
./linking.sh

echo "Installation Completed"
