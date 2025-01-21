#!/bin/bash

# Simple colorschemes installer for https://github.com/BuriXon-code/micro-burixon-dark/ themes.
# The script is used to extract a cloned ZIP file containing themes for the Micro text editor.
# Made by BuriXon-code (c) 2025

ZIP_FILE="$(pwd)/themes/burixon-dark.zip"
DEST_DIR="$HOME/.config/micro/colorschemes"

GREEN="\e[32m"
RED="\e[31m"
YELLOW="\e[33m"
RESET="\e[0m"

# Create the destination directory if it does not exist
if [[ ! -d "$DEST_DIR" ]]; then
	mkdir -p "$DEST_DIR"
	if [[ $? -ne 0 ]]; then
		echo -e "${RED}\nERROR\n${RESET}"
		exit 1
	fi
fi

# Extract the ZIP file temporarily
tmp_dir=$(mktemp -d)
unzip -q "$ZIP_FILE" -d "$tmp_dir"
if [[ $? -ne 0 ]]; then
	rm -rf "$tmp_dir"
	echo -e "${RED}\nERROR\n${RESET}"
	exit 1
fi

skipped=false
for file in "$tmp_dir"/burixon-*-*.micro; do
	filename=$(basename "$file")
	if [[ -f "$DEST_DIR/$filename" ]]; then
		skipped=true
	else
		mv "$file" "$DEST_DIR/"
	fi
done

# Clean up temporary directory
rm -rf "$tmp_dir"

# Display result
if $skipped; then
	echo -e "${YELLOW}\nSome themes were skipped due to duplicates.\n${RESET}"
fi

echo -e "${GREEN}\nDONE\n${RESET}"
exit 0
