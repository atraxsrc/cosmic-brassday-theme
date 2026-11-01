#!/usr/bin/env bash
# Installs the BrassDay delta config into ~/.config/delta/. It does not edit
# ~/.gitconfig: add the [include] it prints.
set -e
dir="$(cd "$(dirname "$0")" && pwd)"
dest=~/.config/delta
mkdir -p "$dest"
[ -f "$dest/brassday.gitconfig" ] && cp "$dest/brassday.gitconfig" "$dest/brassday.gitconfig.bak"
cp "$dir/brassday.gitconfig" "$dest/"
if [ -f ~/.gitconfig ] && grep -qF "delta/brassday.gitconfig" ~/.gitconfig; then
    echo "Done. ~/.gitconfig already includes it."
else
    echo "Done. Add to ~/.gitconfig:"
    echo "  [include]"
    echo "      path = ~/.config/delta/brassday.gitconfig"
fi
echo "Needs the bat BrassDay theme for the code colours: ./bat/install.sh"
