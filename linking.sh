#create Polybar folder
mkdir $HOME/.config/polybar
#creates all the symbolic links
ln -sf $PWD/init.vim                    $HOME/.config/nvim/init.vim
ln -sf $PWD/Xresources                  $HOME/.Xresources                                                                        
ln -sf $PWD/i3/config                   $HOME/.config/i3/config
ln -sf $PWD/polybar/config              $HOME/.config/polybar/config
ln -sf $PWD/polybar/spotifyControl.py   $HOME/.config/polybar/spotifyControl.py   
