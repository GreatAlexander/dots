#!/bin/bash

sudo apt update && sudo apt -y install git curl libfuse2

. install_tmux.sh
. install_starship.sh
. install_thefuck.sh
. install_fonts.sh
. install_fish.sh
