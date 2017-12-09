#create Polybar folder
mkdir $HOME/.config/polybar
#creates all the symbolic links
ln -sf $PWD/configs/init.vim                    $HOME/.config/nvim/init.vim
ln -sf $PWD/configs/Xresources                  $HOME/.Xresources
ln -sf $PWD/configs/i3/config                   $HOME/.config/i3/config
ln -sf $PWD/configs/polybar/config              $HOME/.config/polybar/config
ln -sf $PWD/configs/polybar/spotifyControl.py   $HOME/.config/polybar/spotifyControl.py   
ln -sf $PWD/configs/redshift.conf		$HOME/.config/redshift.conf
