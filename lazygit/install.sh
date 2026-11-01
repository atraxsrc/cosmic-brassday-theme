#!/usr/bin/env bash
# Installs the BrassDay lazygit colours beside your own config.yml
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/lazygit
mkdir -p "$dest"
[ -f "$dest/brassday.yml" ] && cp "$dest/brassday.yml" "$dest/brassday.yml.bak"
cp "$dir/brassday.yml" "$dest/"
echo "Done. zsh/brassday.zsh points LG_CONFIG_FILE at config.yml plus brassday.yml; without it:"
echo "  export LG_CONFIG_FILE=\"\$HOME/.config/lazygit/config.yml,\$HOME/.config/lazygit/brassday.yml\""
