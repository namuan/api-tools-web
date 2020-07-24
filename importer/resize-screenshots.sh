rm -rf static/images/tools
mkdir -vp static/images/tools

ls screenshots | while read -r line; do echo "Resizing $line" && convert screenshots/"$line" -resize 640x480 -quality 50% static/images/tools/"$line"; done
