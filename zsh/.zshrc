#
# ~/.zshrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

#auto loads the 'steeef' prompt layout zsh
autoload -Uz promptinit
promptinit
prompt steeef

#Export PKGBUILD to VIM
export VISUAL="vim"

#aliases
alias paci="sudo pacman -S"

