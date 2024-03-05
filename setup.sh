apt update && apt -y install git curl libfuse2

git clone https://github.com/GreatAlexander/dots.git .dots

cd .dots

. install_tmux.sh
. install_starship.sh
. install_thefuck.sh
. install_fonts.sh
. install_fish.sh
