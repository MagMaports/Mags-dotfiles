#!/usr/bin/env bash
set -e

echo "Installing packages..."

sudo pacman -Syu --needed - < pkglist.txt

if command -v yay >/dev/null; then
    yay -S --needed - < aurlist.txt
fi

mkdir -p ~/.config

cp -r fish ~/.config/
cp -r foot ~/.config/
cp -r inir ~/.config/
cp -r kew ~/.config/
cp -r kitty ~/.config/
cp -r niri ~/.config/
cp -r nvim ~/.config/
cp -r vesktop ~/.config/
cp -r Backup ~/.config/

cp starship.toml ~/.config/

echo "Done!"
