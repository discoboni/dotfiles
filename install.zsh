#!/bin/zsh

#variables
dotfiles = ~/dotfiles

#install necessary programs
#edit this line according to what package manager you are using
sudo pacman -S vim i3-wm i3status zsh rxvt-unicode

mkdir ~/.config/i3

#creates all the symbolic links
ln -sf $dotfiles/.vimrc ~/.vimrc

ln -sf $dotfiles/.Xresources ~/.Xresources

ln -sf $dotfiles/zsh/.zprofile ~/.zprofile

ln -sf $dotfiles/zsh/.zshrc ~/.zshrc

ln -sf $dotfiles/i3/config.conf ~/.config/i3/config.conf

ln -sf $dotfiles/i3/i3status.conf ~/.config/i3/i3status.conf

#set default shell
sudo chsh -s /bin/zsh

echo "Installation Completed"
