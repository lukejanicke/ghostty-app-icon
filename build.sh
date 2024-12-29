#!/bin/zsh

# Make this script executable with:
# chmod +x build.sh

# Run this script with:
# ./build.sh

# Ensure the output directory exists
mkdir -p icons

# Process each .iconset folder
for iconset in iconsets/*.iconset; do

    # Extract the base name (e.g., "ghostty-material-rgb-light" from the folder name)
    name=$(basename "$iconset" .iconset)
    
    # Generate the .icns file in the icons/ directory
    iconutil -c icns "$iconset" -o "icons/$name.icns"
    
    echo "Generated: icons/$name.icns"

done