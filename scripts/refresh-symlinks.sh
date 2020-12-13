echo "Clean-up"
rm -rf \
    ~/.gitconfig \
    ~/.xinitrc \
    ~/.xsessionrc \
    ~/.Xresources \
    ~/.config/nvim/init.vim \
    ~/.config/nvim/coc-settings.json \
    ~/.zshrc \
    ~/.fzf.zsh \
    ~/.p10k.fzf \
    ~/.zshenv \
    ~/.config/i3/config \
    ~/.config/i3status/config
    # ~/.config/rofi/*

echo "Set up symlinks"

# Base
ln -sv ~/dotfiles/config/.xsessionrc ~
ln -sv ~/dotfiles/config/.gitconfig ~
ln -sv ~/dotfiles/config/.Xresources ~
ln -sv ~/dotfiles/config/.xinitrc ~

# zsh
ln -sv ~/dotfiles/config/zsh/zshrc.zsh ~/.zshrc
ln -sv ~/dotfiles/config/zsh/fzf.zsh ~/.fzf.zsh
ln -sv ~/dotfiles/config/zsh/p10k.zsh ~/.p10k.zsh
ln -sv ~/dotfiles/config/zsh/zshenv.zsh ~/.zshenv

# vim
ln -sv ~/dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
ln -sv ~/dotfiles/config/nvim/coc-settings.json ~/.config/nvim/coc-settings.json

# i3
mkdir -p ~/.config/i3
mkdir -p ~/.config/i3status
ln -sv ~/dotfiles/config/i3/config ~/.config/i3/config
ln -sv ~/dotfiles/config/i3/i3status ~/.config/i3status/config

# Rofi
# mkdir -p ~/.config/rofi
# cp -r ~/dotfiles/config/rofi/* ~/.config/rofi

echo "done"
