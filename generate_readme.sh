#!/bin/bash

echo "Generating README.md..."
echo "# Wallpapers" > README.md
echo "" >> README.md

# Add a grid layout with 3 columns
echo "<div style=\"display: grid; grid-template-columns: repeat(3, 1fr); gap: 10px; text-align: center;\">" >> README.md

shopt -s nullglob
for img in wallpapers/*.{png,jpg,jpeg}; do
    if [[ -f "$img" ]]; then
        echo "<div><img src=\"$img\" width=\"300px\"><br>$(basename "$img")</div>" >> README.md
    fi
done

echo "</div>" >> README.md
echo "README.md updated!"
