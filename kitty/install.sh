#!/usr/bin/env bash
# Installs the BrassDay kitty colour scheme into ~/.config/kitty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/kitty/themes
mkdir -p "$dest"
[ -f "$dest/BrassDay.conf" ] && cp "$dest/BrassDay.conf" "$dest/BrassDay.conf.bak"
cp "$dir/BrassDay.conf" "$dest/"
echo "Done. Add to ~/.config/kitty/kitty.conf:  include themes/BrassDay.conf"
echo "then reload kitty (Ctrl+Shift+F5)."
