#!/bin/bash
install_font() {
    local font_name="$1"
    local zip_url="https://github.com/ryanoasis/nerd-fonts/releases/latest/download/${font_name}.zip"
    local font_folder="$HOME/.fonts"

    # Download the font zip file
    wget "${zip_url}"

    # Extract the font to the font folder
    unzip -d "${font_folder}" "${font_name}.zip" "*.ttf"

    # Remove the downloaded zip file
    rm "${font_name}.zip"
}

update_font_cache() {
    # Update font cache
    if command -v fc-cache &> /dev/null; then
        echo "Updating font cache..."
        fc-cache -f -v
    else
        echo "Font cache update skipped. 'fc-cache' command not found."
    fi
}

# List of font names to download
font_list=(
    "Hack"
    "DejaVuSansMono"
    "0xProto"
)

# Loop through the font list and install each font
for font_name in "${font_list[@]}"; do
    install_font "$font_name"
done

# Set fallback fonts
mkdir $HOME/.config/fontconfig
cp fonts.conf $HOME/.config/fontconfig/

# Update font cache
update_font_cache

echo "Fonts installation complete."
