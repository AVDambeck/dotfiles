#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias cl='clear'
alias cls='clear; ls'
alias temp='rm -rf ~/temp/*; cd ~/temp'
alias dotfile="cd ~/documents/git/dotfiles; clear"
PS1='\w $ '
