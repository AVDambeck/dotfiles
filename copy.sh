cd ~/documents/git/dotfiles/
cp -r config/* ~/.config/
cp bashrc ~/.bashrc
cp xinitrc ~/.xinitrc
sway reload 2> /dev/null
i3-msg reload 2> /dev/null
# git add *
# git commit
