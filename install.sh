#!/bin/sh

#install pacaur AUR Package manager
./pacaur_installer.sh
#install necessary programs
#edit this line according to what package manager you are using
sudo pacman -S neovim i3-wm zsh rxvt-unicode git

#install 'vim-plug' - a plugin manager for NEOVIM
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

pacaur -S polybar

#creates all the symbolic links
ln -sf $PWD/init.vim					$HOME/.config/nvim/init.vim
ln -sf $PWD/Xresources					$HOME/.Xresources
ln -sf $PWD/zsh/zprofile				$HOME/.zprofile
ln -sf $PWD/zsh/zshrc					$HOME/.zshrc
ln -sf $PWD/i3/config					$HOME/.config/i3/config
ln -sf $PWD/polybar/config				$HOME/.config/polybar/config
ln -sf $PWD/polybar/spotifyControl.py			$HOME/.config/polybar/spotifyControl.py

#set default shell
sudo chsh -s /bin/zsh

echo "Installation Completed"
