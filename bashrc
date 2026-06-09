#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cl='clear'
alias cls='clear; ls'
alias cla='clear; !!'
alias temp='rm -rf ~/temp/*; cd ~/temp'
alias dotfile="cd ~/documents/dotfiles; clear"
alias inscribe="hexecute -learn !!"
alias grab="!! | wl-copy"
PS1='\w $ '
