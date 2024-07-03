#!/bin/bash

sudo apt-add-repository ppa:fish-shell/release-3

sudo apt update && sudo apt install -y fish

chsh -s /usr/bin/fish

mkdir -p $HOME/.config/fish/functions

ln -sf $(pwd)/fish/config.fish $HOME/.config/fish/config.fish
ln -s $(pwd)/fish/fish_greeting.fish $HOME/.config/fish/functions/fish_greeting.fish
ln -s $(pwd)/fish/fuck.fish $HOME/.config/fish/functions/fuck.fish
ln -s $(pwd)/fish/sl.fish $HOME/.config/fish/functions/sl.fish