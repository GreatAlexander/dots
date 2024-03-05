#!/bin/bash

# Install dependencies
apt -y install fzf

# Download tmux
wget https://github.com/nelsonenzo/tmux-appimage/releases/latest/download/tmux.appimage
chmod u+x tmux.appimage

# Install binary
mv $(pwd)/tmux.appimage /usr/bin/tmux

# Install config
ln -s $(pwd)/tmux.conf $HOME/.tmux.conf

# Install plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install plugins
bash $HOME/.tmux/plugins/tpm/bin/install_plugins

# Config tmux-powerline
mkdir -p $HOME/.config/tmux-powerline
ln -s $(pwd)/tmux-powerline/config.sh $HOME/.config/tmux-powerline/config.sh
ln -s $(pwd)/tmux-powerline/themes $HOME/.config/tmux-powerline/themes
