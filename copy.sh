cp -r ~/documents/git/dotfiles/config/* ~/.config/
cp ~/documents/git/dotfiles/bashrc ~/.bashrc
cp ~/documents/git/dotfiles/xinitrc ~/.xinitrc
sway reload 2> /dev/null
i3-msg reload 2> /dev/null
