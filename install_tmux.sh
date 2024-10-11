#!/bin/bash

# Install dependencies
sudo apt update && sudo apt -y install fzf software-properties-common lsb-release cmake

# Download tmux
wget https://github.com/nelsonenzo/tmux-appimage/releases/latest/download/tmux.appimage
sudo chmod u+x tmux.appimage

# Install binary
sudo mv $(pwd)/tmux.appimage /usr/bin/tmux

# Install config
ln -sf $(pwd)/tmux.conf $HOME/.tmux.conf

# Install plugin manager
git clone https://github.com/tmux-plugins/tpm $HOME/.tmux/plugins/tpm

# Install plugins
bash $HOME/.tmux/plugins/tpm/bin/install_plugins

# Config tmux-powerline
mkdir -p $HOME/.config/tmux-powerline/themes
ln -sf $(pwd)/tmux-powerline/config.sh $HOME/.config/tmux-powerline/config.sh
ln -sf $(pwd)/tmux-powerline/GreatAlexander.sh $HOME/.config/tmux-powerline/themes/GreatAlexander.sh
