# Cosmic Brass Day for Cursor

Colour theme for [Cursor](https://cursor.com) from the COSMIC
[Brass Day](https://github.com/atraxsrc/cosmic-brassday-theme) rice: **Cosmic Brass Day**, dark
only. It is a plain VS Code theme extension, so VS Code and VSCodium take it
too.

## Install

```bash
./vscode/install.sh                # Cursor
./vscode/install.sh code codium    # VS Code / VSCodium instead
```

It packs this folder into `vscode/cosmic-brassday-theme-<version>.vsix` and installs
that with the editor's CLI (`cursor --install-extension`), so the theme is
listed under Extensions and running the script again updates it. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> and pick **Cosmic Brass Day**.

No CLI on the PATH (an AppImage, say): the script still builds the `.vsix`;
install it from Extensions → `...` → **Install from VSIX**.

Brass Day has no light half, so there is nothing for COSMIC's Dark / Light toggle to
switch to; leave `window.autoDetectColorScheme` off, or pair it with another
rice's light theme in `workbench.preferredLightColorTheme`.

## What it colours

Code is coloured the way Neovim is in the rice (`nvim/colors/brassday.lua`):

| Role | Brass Day |
|------|----|
| Keywords, tags | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` |
| Functions, tag attributes | ![#855E19](https://placehold.co/12x12/C9C2B4/C9C2B4.png) `#855E19` |
| Strings | ![#7C602C](https://placehold.co/12x12/9FA5A9/9FA5A9.png) `#7C602C` |
| Numbers, constants | ![#9E4E1A](https://placehold.co/12x12/D87C4A/D87C4A.png) `#9E4E1A` |
| Types, classes, modules | ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` |
| Imports, macros, decorators, escapes, `this` / `self` | ![#7C6040](https://placehold.co/12x12/9D7E6F/9D7E6F.png) `#7C6040` |
| Parameters (italic) | ![#6C6452](https://placehold.co/12x12/A5AEB4/A5AEB4.png) `#6C6452` |
| Operators, punctuation | ![#67645B](https://placehold.co/12x12/7F7F7F/7F7F7F.png) `#67645B` |
| Comments (italic) | ![#9A978C](https://placehold.co/12x12/565D60/565D60.png) `#9A978C` |
| Accent | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` |
| Errors, deleted, conflicts | ![#A63426](https://placehold.co/12x12/DE6145/DE6145.png) `#A63426` |

The workbench takes the window colour of the rice's `cosmic/BrassDay.ron` for the
editor, side bars, panel, title and status bar, the container colours for
menus, hovers, inputs and the command palette, and the sand accent for the
active tab line, buttons, badges and the menu highlight. Button hover is the
lighter sand ![#715E3D](https://placehold.co/12x12/715e3d/715e3d.png) `#715E3D`. The integrated terminal uses the rice's COSMIC
Terminal scheme (`cosmic-term/`), so command output looks the same as in
COSMIC Terminal.

Cursor's own panels (Agent, chat, inline diffs) have no colour keys of their
own. Cursor builds them from standard ones, and the theme sets those: the
button colour is the agent's accent, the side bar and panel colours are its
surfaces, the diff colours are its accept / reject highlights, and the
terminal's `blue` slot colours its links.

## Contrast

Text is at least 4.5:1 on the window background and on menus and hovers,
comments and line numbers at least 3:1. Sand ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` is 9.5:1 on the window background and 8.7:1 on the
container colour ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) `#FBF5E7`, so it stays the same colour everywhere, the
match highlight in the suggest and hover widgets included. Keywords on the
highlighted current line are 8.0:1; comments dip under 3:1 there.
