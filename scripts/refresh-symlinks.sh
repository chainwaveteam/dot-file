#!/bin/bash

# Create symlinks between this versionned dotfiles folder
# and config location: $CONFIG/*

# Usage $ symlink from_file to_file
symlink(){
    rm $2
    ln -sv $1 $2
}

CONFIG="$HOME/.config"
DOTFILES="$HOME/dotfiles"
DOTFILES_CONFIG="$HOME/dotfiles/config"

# Base
symlink $DOTFILES_CONFIG/.gitconfig $HOME/.gitconfig
symlink $DOTFILES_CONFIG/.xinitrc $HOME/.xinitrc
symlink $DOTFILES_CONFIG/.xsessionrc $HOME/.xsessionrc
symlink $DOTFILES_CONFIG/.Xresources $HOME/.Xresources

# zsh
symlink $DOTFILES_CONFIG/zsh/zshrc.zsh $HOME/.zshrc
symlink $DOTFILES_CONFIG/zsh/fzf.zsh $HOME/.fzf.zsh
symlink $DOTFILES_CONFIG/zsh/p10k.zsh $HOME/.p10k.zsh
symlink $DOTFILES_CONFIG/zsh/zshenv.zsh $HOME/.zshenv
symlink $DOTFILES_CONFIG/zsh/aliases.zsh $HOME/.aliases

# vim
mkdir -p $CONFIG/nvim
symlink $DOTFILES_CONFIG/nvim/init.vim $CONFIG/nvim/init.vim
symlink $DOTFILES_CONFIG/nvim/coc-settings.json $CONFIG/nvim/coc-settings.json

# Gnome theme
mkdir -p $CONFIG/gtk-3.0
symlink $DOTFILES_CONFIG/gtk-3.0/settings.ini $CONFIG/gtk-3.0/settings.ini

# VSCode
mkdir -p $CONFIG/Code/User
symlink $DOTFILES_CONFIG/vscode/settings.json $CONFIG/Code/User/settings.json

# i3
mkdir -p $CONFIG/i3
mkdir -p $CONFIG/i3status
mkdir -p $CONFIG/picom
symlink $DOTFILES_CONFIG/i3/config.sh $CONFIG/i3/config
symlink $DOTFILES_CONFIG/i3/i3status.sh $CONFIG/i3status/config
symlink $DOTFILES_CONFIG/i3/picom.conf $CONFIG/picom/picom.conf

# Navigation
mkdir -p $CONFIG/rofi
mkdir -p $CONFIG/dmenu-extended/config

symlink $DOTFILES_CONFIG/dmenu-extended/preferences.json $CONFIG/dmenu-extended/config/dmenuExtended_preferences.txt
symlink $DOTFILES_CONFIG/dmenu-extended/internetSearch.json $CONFIG/dmenu-extended/config/internetSearch.json 
symlink $DOTFILES_CONFIG/dmenu-extended/dmenu_projects.json $CONFIG/dmenu-extended/config/dmenu_projects.json
symlink $DOTFILES_CONFIG/rofi/config.rasi $CONFIG/rofi/config.rasi
