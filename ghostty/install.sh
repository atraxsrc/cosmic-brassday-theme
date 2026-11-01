#!/usr/bin/env bash
# Installs the BrassDay Ghostty theme into ~/.config/ghostty/themes/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/ghostty/themes
mkdir -p "$dest"
[ -f "$dest/BrassDay" ] && cp "$dest/BrassDay" "$dest/BrassDay.bak"
cp "$dir/BrassDay" "$dest/"
echo "Done. Add to ~/.config/ghostty/config:  theme = BrassDay"
echo "(or  theme = dark:Brass,light:BrassDay  to follow COSMIC's toggle), then reload: Ctrl+Shift+,"
