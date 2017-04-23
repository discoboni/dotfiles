#!/bin/sh

#install pacaur, and AUR Package manager
curl -s https://gist.githubusercontent.com/Tadly/0e65d30f279a34c33e9b/raw/pacaur_install.sh | bash
#install necessary programs
#edit this line according to what package manager you are using
sudo pacman -S vim i3-wm i3status zsh rxvt-unicode git

#install 'vundle' - a plugin manager for VIM
git clone https://github.com/VundleVim/Vundle.vim.git $HOME/.vim/bundle/Vundle.vim
pacaur -S polybar

#creates all the symbolic links
ln -sf $HOME/dotfiles/.vimrc $HOME/.vimrc
ln -sf $HOME/dotfiles/.Xresources $HOME/.Xresources
ln -sf $HOME/dotfiles/zsh/.zprofile $HOME/.zprofile
ln -sf $HOME/dotfiles/zsh/.zshrc $HOME/.zshrc
ln -sf $HOME/dotfiles/i3/config $HOME/.config/i3/config
ln -sf $HOME/dotfiles/i3/i3status.conf $HOME/.config/i3/i3status.conf
ln -sf $HOME/dotfiles/polybar/config $HOME/.config/polybar/config
ln -sf $HOME/dotfiles/polybar/spotifyControl.py $HOME/.config/polybar/spotifyControl.py

#set default shell
sudo chsh -s /bin/zsh

echo "Installation Completed"
