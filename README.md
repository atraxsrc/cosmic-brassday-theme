<div align="center">

# COSMIC · Brass Day

![Brass Day palette](assets/palette.png)

Pop!_OS 24.04 on COSMIC in parchment, coffee and sand: desktop, terminal,
shell, Firefox, Brave, cursor, wallpapers. A warm light rice with no cold
colour; brick is kept for what is wrong. The light half of a pair;
the dark half is [cosmic-brass-theme](https://github.com/atraxsrc/cosmic-brass-theme).

![Pop!_OS](https://img.shields.io/badge/Pop!_OS-24.04_LTS-77603b?style=for-the-badge&logo=popos&logoColor=white)
![COSMIC](https://img.shields.io/badge/COSMIC-1.0.0-7c602c?style=for-the-badge)
![Brass Day](https://img.shields.io/badge/Theme-BrassDay-f4ecd6?style=for-the-badge&labelColor=77603b)
![Firefox](https://img.shields.io/badge/Firefox-BrassDay-77603b?style=for-the-badge&logo=firefox-browser&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-67645b?style=for-the-badge)

</div>

---
![Pop!_OS COSMIC desktop with the Brass Day theme](assets/screenshot.png)

## Palette

Parchment, a warm cream, with coffee text and a run of warm tones between
them: taupe, clay, tan and gold. Sand is the accent, amber takes numbers and
warnings, and brick is kept for errors and nothing else. Every text colour
is at least 4.5:1 on the window background.

| Role | Color | Hex |
|------|-------|-----|
| Background | ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) Parchment | ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6` |
| Containers | ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) Ivory / Linen | ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) `#FBF5E7` / ![#EDE3C9](https://placehold.co/12x12/ede3c9/ede3c9.png) `#EDE3C9` |
| Text | ![#1d1c17](https://placehold.co/12x12/1d1c17/1d1c17.png) Coffee | ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` |
| Accent | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) Sand | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` |
| Warning | ![#9e4e1a](https://placehold.co/12x12/9e4e1a/9e4e1a.png) Amber | ![#9E4E1A](https://placehold.co/12x12/9e4e1a/9e4e1a.png) `#9E4E1A` |
| Error | ![#a63426](https://placehold.co/12x12/a63426/a63426.png) Brick | ![#A63426](https://placehold.co/12x12/a63426/a63426.png) `#A63426` |
| Success | ![#7c602c](https://placehold.co/12x12/7c602c/7c602c.png) Tan | ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` |
| Gold | ![#855e19](https://placehold.co/12x12/855e19/855e19.png) Symlinks, yellow slot | ![#855E19](https://placehold.co/12x12/855e19/855e19.png) `#855E19` |
| Clay | ![#70614C](https://placehold.co/12x12/70614c/70614c.png) Directories, types | ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` |
| Muted | ![#67645b](https://placehold.co/12x12/67645b/67645b.png) Secondary text | ![#67645B](https://placehold.co/12x12/67645b/67645b.png) `#67645B` |
| Dim | ![#9a978c](https://placehold.co/12x12/9a978c/9a978c.png) Comments | ![#9A978C](https://placehold.co/12x12/9a978c/9a978c.png) `#9A978C` |
| Lines | ![#c0b496](https://placehold.co/12x12/c0b496/c0b496.png) Box lines, inactive | ![#C0B496](https://placehold.co/12x12/c0b496/c0b496.png) `#C0B496` |

| Role | Brass Day | Brass |
|------|---|---|
| Background | ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6` | ![#1C1B19](https://placehold.co/12x12/1c1b19/1c1b19.png) `#1C1B19` |
| Text | ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` | ![#F0E4C5](https://placehold.co/12x12/f0e4c5/f0e4c5.png) `#F0E4C5` |
| Accent | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` | ![#D4BD99](https://placehold.co/12x12/d4bd99/d4bd99.png) `#D4BD99` |
| Success | ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` | ![#C2A571](https://placehold.co/12x12/c2a571/c2a571.png) `#C2A571` |
| Error | ![#A63426](https://placehold.co/12x12/a63426/a63426.png) `#A63426` | ![#DD6A5C](https://placehold.co/12x12/dd6a5c/dd6a5c.png) `#DD6A5C` |

The accent is sand, 5.1:1 on the background and 5.5:1 on a container,
dark enough that buttons and selections carry parchment text on top and the
accent never needs a brighter variant.

---

## Repo Structure

```
.
├── brave
│   ├── theme                    # Chromium theme (manifest + icons), Load unpacked
│   └── README.md
├── btop
│   └── BrassDay.theme                 # btop colour theme
├── claude-desktop
│   ├── cosmic-brass.jsonc          # Claude Desktop theme (claude-desktop-extra)
│   └── install.sh
├── cosmic
│   ├── BrassDay.ron                   # COSMIC Appearance import (Light)
│   ├── config/                  # baseline settings: fonts, icons, terminal look
│   └── install.sh
├── cosmic-term
│   ├── BrassDay-term.ron              # COSMIC Terminal colour scheme
│   ├── BrassDay-term-*.ron            # dimmer plain-text variants, same ANSI colours
│   └── README.md                # previews and which one to pick
├── cursors
│   ├── Oxygen-BrassDay-*/             # cursor themes, one per icon colour, patched for COSMIC apps
│   ├── recolour.py              # makes a variant from any other, see cursors/README.md
│   ├── install.sh
│   ├── uninstall.sh
│   └── README.md
├── icons
│   └── install.sh               # Cosmic-BrassDay icon pack from cosmic-icon-themes
├── fastfetch
│   ├── config.jsonc             # sand / clay fastfetch config
│   ├── cosmic.txt               # COSMIC logo
│   └── install.sh
├── firefox
│   ├── theme                    # Cosmic Brass Day theme add-on (manifest + icons)
│   ├── chrome
│   │   ├── userChrome.css       # rounded chrome, ivory menus
│   │   └── userContent.css      # new tab accent
│   ├── install.sh
│   └── README.md
├── lsd
│   ├── config.yaml              # theme: custom
│   ├── colors.yaml              # permission / size / date / git columns
│   └── install.sh
├── nvim                         # Neovim colorscheme, LazyVim spec, RON syntax, install.sh
├── telegram
│   ├── colors.tdesktop-theme    # Telegram Desktop colour scheme (source)
│   ├── cosmic-brassday.tdesktop-theme # built theme, open this in Telegram
│   └── build.sh                 # rebuilds it, optionally with a wallpaper
├── vscode
│   ├── themes/                  # Cursor / VS Code colour themes, Brass (dark) + Brass Day (light)
│   ├── package.json             # extension manifest
│   ├── install.sh               # packs a .vsix, installs it with cursor --install-extension
│   └── README.md
├── scripts
│   ├── update_system.sh         # nala + flatpak, sand / tan ANSI
│   └── switch.sh                # make this the active rice (see Switching rice)
├── zsh
│   ├── brassday.zsh                   # LS_COLORS, highlighting colours, aliases, starship
│   └── install.sh
├── assets
│   ├── cursors/                 # cursor preview
│   ├── cosmic-term/             # scheme previews for cosmic-term/README.md
│   ├── palette.png              # the 16 terminal colours, under the title
│   ├── screenshot.png           # README screenshot
│   └── wallpaper.png            # the geisha wallpaper at 2560x1440
├── backgrounds/                 # wallpapers, brassday-<subject>.jpg/.png (see Icons and wallpaper)
├── docs
│   └── showcase.md              # the rice describing itself, for the Postilla pane of a screenshot
├── LICENSE
└── README.md
```

---

## COSMIC Desktop

This is a **Light** theme, so it goes in COSMIC's Light slot:

Settings → Desktop → Appearance → **Light** → **Import** → `cosmic/BrassDay.ron`

Accent is sand ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B`. Use the `+` control if you want a custom swatch.

Frosted glass is on in the `.ron` at `frosted: Low` with an opacity table of
0.66 to 0.96, tinted with the palette's dim grey, for windows, panel,
applets and system UI (maximized apps stay solid), and corners are squared
(`radius_*: 2.0`), the same as the DarkGold baseline. Adjust frosted glass on
Appearance → Style → Frosted glass after import; those sliders survive a theme switch.

Export from Appearance if you tweak backgrounds / tints so you do not lose them.

Pairing tip: import `Brass.ron` from
[cosmic-brass-theme](https://github.com/atraxsrc/cosmic-brass-theme) into the
Dark slot and COSMIC's Dark / Light toggle flips between the two. Wallpaper,
Firefox and the shell layer do not follow the toggle; those are per-rice files.

### Baseline settings

`cosmic/config/` holds the settings that make up the look and rarely change
(panel, dock, applets and shortcuts are left out on purpose):

| Where | Setting |
|-------|---------|
| Fonts | Interface `Maple Mono Normal` Light, monospace `Maple Mono Normal NFM` |
| Icons | Cosmic-BrassDay-Sand |
| Windows | Minimize / maximize buttons hidden, theme applied to GNOME apps |
| Terminal | Maple Mono 15 (weights 500 / bold 800 / dim 300), 77% opacity, no header bar, Brass Day |

Install the [Maple fonts](https://github.com/subframe7536/maple-font/releases)
(Maple Mono Normal and Maple Mono Normal NFM) and the Cosmic-BrassDay icons (see
Icons below) and import the terminal scheme first, then:

```bash
./cosmic/install.sh
```

It backs up each file it replaces to `*.bak` and COSMIC applies it live.

The interface font is the Light weight on purpose. COSMIC sets interface text
brightness itself (the text tint only picks the hue), so on these light panels
labels land near ![#463400](https://placehold.co/12x12/463400/463400.png) `#463400` whatever tint you choose; the thinner strokes are
what calms them at night. Settings → Fonts lists only families, so the weight
lives in `cosmic/config/com.system76.CosmicTk/v1/interface_font`.

---

## COSMIC Terminal

The desktop `.ron` does not colour ANSI text.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. Light tab → **Import** → `cosmic-term/BrassDay-term.ron`
3. View → Settings → Appearance → Color scheme (light) → **Brass Day**

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing.

Coffee text on parchment; brick for errors, sand for the cursor and the
`blue` slot, tan for strings and success, gold in the yellow slot, amber
in the magenta slot for numbers, clay for directories.

If coffee is not the plain text you want, there are five other variants
with the same ANSI colours, from Taupe ![#67645B](https://placehold.co/12x12/67645b/67645b.png) `#67645B` up to
Bark ![#6F5F36](https://placehold.co/12x12/6f5f36/6f5f36.png) `#6F5F36`. Previews and which to
pick: [`cosmic-term/README.md`](cosmic-term/README.md).

---

## Firefox

Two layers:

1. **Theme (colours):** `firefox/theme` is a WebExtension theme, **Cosmic Brass Day**.
   Until it is listed on addons.mozilla.org, load it from the folder:
   `about:debugging#/runtime/this-firefox` → **Load Temporary Add-on** →
   `firefox/theme/manifest.json` (gone on restart), or zip it and have AMO
   sign it for you; see [`firefox/README.md`](firefox/README.md).
   This is the main look.
2. **Stylesheets (optional):** `firefox/chrome/` adds rounded corners, sand
   menu hover, sand accents and blank new-tab tiles on top of the theme
   (they also work with Firefox's built-in Light theme):

```bash
./firefox/install.sh
```

Fully quit Firefox afterward. Details and CSS rules: [`firefox/README.md`](firefox/README.md).

---

## Brave

`brave/theme` is a Chromium theme with the Firefox theme's colours: parchment
frame, ivory toolbar, tan icons and inactive tabs, sand on the
active tab. Brave, Chrome, Chromium and Edge take it, and it loads straight
from the clone, so no Chrome Web Store or Google account is needed:

`brave://extensions` → **Developer mode** → **Load unpacked** → `brave/theme`

Leave the clone in place, Brave keeps reading the folder. Colours, limits and
packing a `.crx`: [`brave/README.md`](brave/README.md).

---

## Claude Desktop

For the unofficial [claude-desktop-extra](https://github.com/patrickjaja/claude-desktop-extra)
Linux build. `claude-desktop/cosmic-brass.jsonc` is one theme with both halves:
Brass in dark mode and Brass Day in light mode, so Claude's own
Settings → Appearance toggle switches between the two rices.
Colours come from `cosmic/*.ron`, contrast-checked (text and
button text 4.5:1, accents 3:1).

```bash
./claude-desktop/install.sh
```

It copies the file into `~/.config/Claude/themes.d/`. Then press
<kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>T</kbd> in Claude Desktop and pick **cosmic-brass**.

The same file ships in [`cosmic-brass-theme`](https://github.com/atraxsrc/cosmic-brass-theme),
so installing from either repo gives the same theme.

---

## Cursor editor

`vscode/` is a colour theme extension for [Cursor](https://cursor.com) with
both halves of the pair: **Cosmic Brass** and **Cosmic Brass Day**. It is a
plain VS Code theme extension, so VS Code and VSCodium take it too, and the
same extension ships in cosmic-brass-theme. Code is coloured the way Neovim is
in the rice; the workbench is
parchment with ivory menus, hovers and inputs, sand on the active tab, buttons
and menu highlight, and the integrated terminal uses the COSMIC Terminal
scheme. Cursor builds its Agent and chat panels from the same theme colours,
so they follow along.

```bash
./vscode/install.sh
```

It packs `vscode/` into a `.vsix` and installs it with
`cursor --install-extension`; run it again after editing the theme. Then press
<kbd>Ctrl</kbd>+<kbd>K</kbd> <kbd>Ctrl</kbd>+<kbd>T</kbd> in Cursor and pick
**Cosmic Brass Day**. Three lines in Cursor's `settings.json` make it follow
COSMIC's Dark / Light toggle between Brass and Brass Day; they, the colours and
the contrast notes are in [`vscode/README.md`](vscode/README.md).

---

## Telegram

`telegram/cosmic-brassday.tdesktop-theme` is a Telegram Desktop theme: parchment chat
list and background, ivory incoming and dark-tan outgoing bubbles, sand
for the accent, links, unread badges and buttons (with parchment text on them),
tan for online status and read ticks, brick only where Telegram marks
something wrong. Group member names cycle through eight of the rice's
colours. Text and badge colours are contrast-checked at 4.5:1 or better,
except disabled menu items.

Settings → Chat Settings → Chat wallpaper → **Choose from file** →
`telegram/cosmic-brassday.tdesktop-theme` → **Apply this theme**.

The colours live in `telegram/colors.tdesktop-theme`, which is plain text;
`build.sh` zips it with the chat background into the `.tdesktop-theme`. The
background is plain parchment; to put a wallpaper behind the chat instead
(ImageMagick re-encodes it to a 2560px JPEG, Telegram caps theme files at 5 MB):

```bash
./telegram/build.sh --wallpaper backgrounds/brassday-geisha.jpg
```

Built against Telegram Desktop 7.3.1. Calls, group calls, statistics charts and
premium badges keep Telegram's own colours.

Telegram has no dark / light pairing, so Brass, the dark half, ships its
own theme.

---

## Cursor

**Oxygen** cursors recoloured to the icon colours, one per folder colour of the
Cosmic-BrassDay icon pack: **Sand** (default), **Brick**, **Dark**. Patched with the cursor
names COSMIC apps ask for. COSMIC has no cursor picker yet, so the script sets it:

```bash
./cursors/install.sh                      # Sand
./cursors/install.sh --variant Dark      # or another, see --list
reboot
```

Previews, what the script touches, how to undo it and how the colours are made:
[`cursors/README.md`](cursors/README.md).

---

## Scripts

### `update_system.sh`

nala + flatpak updater. Headers in sand, info in clay, success in tan,
warnings in amber, errors in brick; the banner ramps from tan to
gold, the rule below it from sand into tan.

```bash
chmod +x scripts/update_system.sh
./scripts/update_system.sh
```

### `switch.sh`

Makes this the active rice, coming from any other `cosmic-*-theme` rice. See
[Switching rice](#switching-rice).

```bash
./scripts/switch.sh
```

---

## Terminal extras

Need a [Nerd Font](https://www.nerdfonts.com/) in the terminal for the icons
(Maple Mono NFM in the baseline above).

### zsh

`zsh/brassday.zsh` is the rice part of the shell only: `LS_COLORS` (also used by
lsd for file names and by the completion menu), sand / tan / gold colours
for zsh-autosuggestions and zsh-syntax-highlighting, lsd / bat / nvim aliases
and the starship prompt. Your own `~/.zshrc` stays private and sources it.

Needs zsh + [oh-my-zsh](https://ohmyz.sh/). `install.sh` clones the two
plugins if missing and appends one `source` line to `~/.zshrc` (backup in
`~/.zshrc.bak`):

```bash
./zsh/install.sh
exec zsh
```

In `~/.zshrc` keep `ZSH_THEME=""` and
`plugins=(git sudo zsh-autosuggestions zsh-syntax-highlighting)`.

### lsd

File names are coloured by `LS_COLORS` from `zsh/brassday.zsh`;
`lsd/colors.yaml` colours the other columns with the 256-colour codes nearest
the palette (95 sand, 130 brick, 130 amber, 94 tan, 94 gold,
59 clay, 102 taupe, 241 dusk.). lsd 1.0.0 does not accept `#hex` there.

```bash
./lsd/install.sh
lsd -l
```

### fastfetch

COSMIC logo in sand, Hardware / Software / Age boxes in dim grey with
clay keys. `install.sh` backs up any existing
`~/.config/fastfetch/config.jsonc` to `config.jsonc.bak`.

```bash
./fastfetch/install.sh
fastfetch
```

### Neovim

`nvim/` carries the rice into Neovim: a dependency-free colorscheme built from
the palette (`nvim/colors/brassday.lua`), a LazyVim spec that selects it and makes
sure the treesitter parsers for the files in this repo are installed
(`nvim/lua/plugins/brassday.lua`), and a small RON syntax file so `cosmic/*.ron`
is coloured even before the parser exists. `:terminal` inside Neovim uses the
Brass Day scheme.

```bash
./nvim/install.sh
# restart nvim; LazyVim switches to the brassday colorscheme
```

Without LazyVim, copy `nvim/colors/brassday.lua` to `~/.config/nvim/colors/` and
run `:colorscheme brassday`.

### btop

`btop/BrassDay.theme`: parchment background, dim grey boxes, sand titles, meters
ramp from tan through gold to brick.

```bash
mkdir -p ~/.config/btop/themes
cp btop/BrassDay.theme ~/.config/btop/themes/
# btop → Esc → Options → Color theme → Brass Day
```

---

## Icons and wallpaper

Icons: **Cosmic-BrassDay**, the [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa)
by Fausto Korpsvart recolored to this palette in
[cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes). Folders come in
three colors: **Sand** ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` (default), **Brick** ![#A63426](https://placehold.co/12x12/a63426/a63426.png) `#A63426` and **Dark** ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` with sand symbols.

![Cosmic-BrassDay folder colors](https://raw.githubusercontent.com/atraxsrc/cosmic-icon-themes/main/previews/Cosmic-BrassDay.png)

```bash
./icons/install.sh                       # Sand folders
./icons/install.sh --variant Brick  # or Dark
```

It downloads the pack from the latest cosmic-icon-themes release, checks its SHA256,
installs it to `~/.local/share/icons/` and sets it as the COSMIC icon theme.
Restart open apps afterwards (Files caches icons per window).
Add `--system` to install to `/usr/share/icons` instead, for every user and the
login screen (asks for sudo); `--user` is the default.

Wallpapers ship in [`backgrounds/`](backgrounds/), named `brassday-<subject>`, the same pictures as Brass, lifted into Brass Day's light key:
three illustrations in coffee and parchment, a woman with a cigarette and her hands
in her hair, a geisha in a striped kimono, and a masked girl with white hair
inside a wireframe, plus the anime portrait from the screenshot
(`brassday-anime.png`) in sand and parchment. The geisha (`brassday-geisha.jpg`) is the
one in `assets/wallpaper.png` at 2560x1440.

Settings → Wallpaper → Add image → a file from `backgrounds/`, or one you downloaded.

---

## Setup

```bash
git clone https://github.com/atraxsrc/cosmic-brassday-theme.git
cd cosmic-brassday-theme

# desktop
# Settings → Appearance → Light → Import cosmic/BrassDay.ron

# terminal
# View → Color schemes → Light tab → Import cosmic-term/BrassDay-term.ron

# firefox theme: about:debugging → Load Temporary Add-on → firefox/theme/manifest.json
# (or zip and sign it, see firefox/README.md)

# optional extra chrome
./firefox/install.sh

# brave: brave://extensions → Developer mode → Load unpacked → brave/theme

# claude desktop (claude-desktop-extra), then Ctrl+Shift+T
./claude-desktop/install.sh

# cursor editor, then Ctrl+K Ctrl+T → Cosmic Brass Day
./vscode/install.sh

# telegram desktop
# Settings → Chat Settings → Chat wallpaper → Choose from file → telegram/cosmic-brassday.tdesktop-theme

# cursor (then reboot), see cursors/README.md
./cursors/install.sh                      # Sand
./cursors/install.sh --variant Dark      # or another, see --list
reboot

# shell + terminal tools (see Terminal extras above)
./zsh/install.sh
./lsd/install.sh
./fastfetch/install.sh
./nvim/install.sh
mkdir -p ~/.config/btop/themes && cp btop/BrassDay.theme ~/.config/btop/themes/

# wallpaper
# Settings → Wallpaper → Add image → a file from backgrounds/ (see Icons and wallpaper above)

./icons/install.sh                  # icons (see Icons above)
# Maple fonts (https://github.com/subframe7536/maple-font), then
# fonts, icons, terminal look from cosmic/config/
./cosmic/install.sh
```

---

## Switching rice

The installers replace what they own (with a `*.bak` copy), but some things
pile up instead: shell layers in `~/.zshrc`, LazyVim specs, the updater link and
btop's theme setting. `scripts/switch.sh` makes Brass Day the active rice, coming
from any other `cosmic-*-theme` rice, and tidies those up. Every rice repo ships
the same script.

```bash
./scripts/switch.sh               # switch, icons included
./scripts/switch.sh --keep-icons  # leave the current icon theme alone
```

It backs up every file it replaces, then:

- copies `cosmic/config/` (fonts, terminal look, icons) and turns light mode on.
  The terminal scheme and icon theme are only replaced when the current one is
  not already a Brass Day variant, so a dimmer text variant or another icon colour
  survives. Icons stay as they are until `./icons/install.sh` has run.
- runs the fastfetch, lsd, Neovim and Claude Desktop installers and sets
  btop's `color_theme`
- moves every other rice's LazyVim spec from `~/.config/nvim/lua/plugins/` to
  `~/.config/nvim/rice-off/` (LazyVim loads every spec there and the last
  colorscheme wins); your own specs stay
- comments out every other rice's `source` line in `~/.zshrc`, and
  cosmic-ricing's `ricing/zsh/colors.zsh`, then uncomments Brass Day's or adds it
- points `~/update_system.sh` at this repo's updater
- installs the Firefox userChrome / userContent

The GUI steps it cannot do are printed at the end:

1. Settings → Desktop → Appearance → Light → Import `cosmic/BrassDay.ron`
2. COSMIC Terminal → View → Color schemes → Light tab → Import `cosmic-term/BrassDay-term.ron`
3. Firefox: disable the old rice's add-on, enable this one, restart Firefox
4. Settings → Wallpaper → a file from `backgrounds/`
5. Claude Desktop: Ctrl+Shift+T → `cosmic-brass`, Appearance → Light
6. `exec zsh`, restart Neovim (`:Lazy clean` drops plugins only the old specs used)

Skip 1 and 2 when that slot already holds Brass Day. The first time on this rice,
run [Setup](#setup) once for the fonts, icons and cursor.

**Within the pair** (Brass Day ↔ [Brass](https://github.com/atraxsrc/cosmic-brass-theme)): the two halves
sit side by side in COSMIC's Dark and Light slots and share one Claude Desktop
theme, so after the first time only the Firefox add-on and the wallpaper are
left by hand. Add `--keep-icons` to keep one icon colour across the pair.

Leaving Brass Day is the next rice's `./scripts/switch.sh`. `./cursors/uninstall.sh`
puts the Pop cursor back.

---

## Stack

| Tool | What it does |
|------|-------------|
| [Pop!_OS 24.04](https://pop.system76.com/) | Base OS by System76 |
| [COSMIC DE](https://system76.com/cosmic) | Desktop environment |
| [oh-my-zsh](https://ohmyz.sh/) | zsh framework + plugins |
| [lsd](https://github.com/lsd-rs/lsd) | `ls` with icons and colours |
| [fastfetch](https://github.com/fastfetch-cli/fastfetch) | System info |
| [btop](https://github.com/aristocratos/btop) | Resource monitor |
| [cosmic-icon-themes](https://github.com/atraxsrc/cosmic-icon-themes) | Icon pack (Cosmic-BrassDay), recolored from [Kanagawa icons](https://github.com/Fausto-Korpsvart/Kanagawa-GKT-Theme/tree/main/icons/Kanagawa) |
| [Oxygen-Cursors](https://github.com/wo2ni/Oxygen-Cursors) | Cursor, recoloured to the icon colours |

## Credits

- Shared baseline (frosted glass, squared corners, fonts, the Firefox and
  Chromium theme recipes, the scripts) from
  [cosmic-darkgold-theme](https://github.com/atraxsrc/cosmic-darkgold-theme) and
  [cosmic-noir-theme](https://github.com/atraxsrc/cosmic-noir-theme).

## License

MIT. The cursor artwork keeps the terms of KDE's Oxygen project, see
[`cursors/README.md`](cursors/README.md).
