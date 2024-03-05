#!/bin/bash

apt-add-repository ppa:fish-shell/release-3

apt update

apt install -y fish

chsh -s /usr/bin/fish

ln -sf $(pwd)/fish/config.fish $HOME/.config/fish/config.fish

ln -s $(pwd)/fish/fuck.fish $HOME/.config/fish/functions/fuck.fish

ln -s $(pwd)/fish/sl.fish $HOME/.config/fish/functions/sl.fish