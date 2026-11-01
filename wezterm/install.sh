#!/usr/bin/env bash
# Installs the BrassDay WezTerm colour module into ~/.config/wezterm/
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/wezterm
mkdir -p "$dest"
[ -f "$dest/brassday.lua" ] && cp "$dest/brassday.lua" "$dest/brassday.lua.bak"
cp "$dir/brassday.lua" "$dest/"
echo 'Done. Add to ~/.config/wezterm/wezterm.lua:  config.colors = require("brassday")'
