rm -rf static/images/tools
mkdir -vp static/images/tools

ls screenshots | while read -r line; do convert -resize 800x600 screenshots/"$line" static/images/tools/"$line"; done
