#!/bin/bash

echo "Generating README.md..."
echo "# Wallpapers" > README.md
echo "" >> README.md
echo "<table>" >> README.md

shopt -s nullglob
count=0

for img in wallpapers/*.{png,jpg,jpeg}; do
    if [[ -f "$img" ]]; then
        # Start a new row every 3 images
        if (( count % 3 == 0 )); then
            echo "<tr>" >> README.md
        fi

        echo "<td style=\"text-align: center;\"><img src=\"$img\" width=\"300px\"><br>$(basename "$img")</td>" >> README.md

        # Close the row after 3 images
        if (( count % 3 == 2 )); then
            echo "</tr>" >> README.md
        fi

        ((count++))
    fi
done

# If the last row isn't closed, close it
if (( count % 3 != 0 )); then
    echo "</tr>" >> README.md
fi

echo "</table>" >> README.md
echo "README.md updated!"
