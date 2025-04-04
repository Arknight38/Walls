#!/bin/bash

echo "Generating README.md..."
echo "# Wallpapers" > README.md
echo "" >> README.md

# Add a div container for styling
echo "<div style=\"display: grid; grid-template-columns: repeat(4, 1fr); gap: 10px;\">" >> README.md

shopt -s nullglob
for img in wallpapers/*.{png,jpg,jpeg}; do
    if [[ -f "$img" ]]; then
        echo "<div style=\"text-align: center;\"><img src=\"$img\" width=\"300px\"><br>$(basename "$img")</div>" >> README.md
    fi
done

echo "</div>" >> README.md

echo "README.md updated!"
