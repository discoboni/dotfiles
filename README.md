# dotfiles

These are my dotfiles for the following programs

<code>neovim i3wm urxvt zsh pacaur polybar</code>

To install simply run:

<code>bash install.sh</code>

<strong>EXECUTING THIS SCRIPT WILL ALSO DOWNLOAD ALL OF THE PROGRAMS MENTIONED ABOVE</strong>
<strong>IT WILL ALSO SET YOUR DEFAULT SHELL AS ZSH</strong>

If you are using any shell other than Bash you'll have to edit the first line the script.

To do that you need to get the path to the shell you are currently using, type the following in the terminal:

<code>echo $SHELL</code>

Copy the out and change the first line in <em>install.sh</em> to:

<code>#!/path/to/shell</code>

You might have to change the file extension as well depending on what shell you are using;
