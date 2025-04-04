#!/bin/bash

echo "Generating README.md..."
echo "# Wallpapers" > README.md
echo "" >> README.md
echo "| Preview | Name |" >> README.md
echo "|---------|------|" >> README.md
shopt -s nullglob

for img in wallpapers/*.{png,jpg,jpeg}; do
    if [[ -f "$img" ]]; then
        echo "| <img src=\"$img\" width=\"200px\"> | $(basename "$img") |" >> README.md
    fi
done

echo "README.md updated!"
