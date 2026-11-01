#!/usr/bin/env bash
# Installs the BrassDay Alacritty colour scheme into ~/.config/alacritty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/alacritty/themes
mkdir -p "$dest"
[ -f "$dest/brassday.toml" ] && cp "$dest/brassday.toml" "$dest/brassday.toml.bak"
cp "$dir/brassday.toml" "$dest/"
echo "Done. Add to ~/.config/alacritty/alacritty.toml:"
echo '  [general]'
echo '  import = ["~/.config/alacritty/themes/brassday.toml"]'
