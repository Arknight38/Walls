#!/bin/bash

echo "Generating README.md..."
echo "# Wallpapers" > README.md
echo "" >> README.md
echo "<table>" >> README.md
echo "<tr><th>Preview</th><th>Name</th></tr>" >> README.md
shopt -s nullglob

for img in wallpapers/*.{png,jpg,jpeg}; do
    if [[ -f "$img" ]]; then
        echo "<tr><td><img src=\"$img\" width=\"200px\"></td><td>$(basename "$img")</td></tr>" >> README.md
    fi
done

echo "</table>" >> README.md

echo "README.md updated!"
