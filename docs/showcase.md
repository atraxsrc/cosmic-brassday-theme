# Brass Day

> Parchment, coffee and sand, amber for warmth, brick for what is wrong. Warm metal on pale wood.

Pop!_OS 24.04 on the COSMIC desktop, one palette carried through the whole
machine: desktop, terminal, shell, editor, browser. This note is the rice
describing itself, written in Markdown and rendered by **Postilla**.

## Palette

Every text colour is checked against the window background ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6`.

| Role | Hex | Contrast on background |
|------|-----|------------------------|
| Text | ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` | 14.5:1 |
| Sand, accent | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` | 5.1:1 |
| Amber, warning | ![#9E4E1A](https://placehold.co/12x12/9e4e1a/9e4e1a.png) `#9E4E1A` | 5.0:1 |
| Brick, error | ![#A63426](https://placehold.co/12x12/a63426/a63426.png) `#A63426` | 5.7:1 |
| Tan, success | ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` | 5.0:1 |
| Gold, symlinks | ![#855E19](https://placehold.co/12x12/855e19/855e19.png) `#855E19` | 4.9:1 |
| Clay, directories | ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` | 5.1:1 |
| Muted | ![#67645B](https://placehold.co/12x12/67645b/67645b.png) `#67645B` | 5.0:1 |

Containers sit one step away from the background at ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) `#FBF5E7`, which is
what frosted glass blurs into.

## Where the colours go

```mermaid
flowchart LR
    P[Brass Day palette] --> D[COSMIC desktop<br/>BrassDay.ron, Light slot]
    P --> T[COSMIC Terminal<br/>Brass Day]
    P --> S[zsh layer<br/>LS_COLORS, highlighting, starship]
    P --> E[Postilla<br/>syntax theme from the terminal scheme]
    T --> B[btop, bat, lsd, fastfetch]
    D --> F[Firefox<br/>built-in Light + userChrome]
```

## Setup, in order

- [x] Import `cosmic/BrassDay.ron` into Appearance, **Dark** slot
- [x] Import `cosmic-term/BrassDay-term.ron`, pick **Brass Day** for the profile
- [x] `./icons/install.sh` for the **Cosmic-BrassDay** icons, `./cosmic/install.sh` for fonts and the terminal look
- [x] `./zsh/install.sh`, `./lsd/install.sh`, `./fastfetch/install.sh`
- [x] Cursor: Oxygen-BrassDay-Sand
- [x] Wallpaper: `backgrounds/brassday-anime.png`
- [ ] Screenshot for the README

## The baseline every rice shares

```ron
corner_radii: (
    radius_xs: (2.0, 2.0, 2.0, 2.0),   // squared corners
    radius_xl: (2.0, 2.0, 2.0, 2.0),
),
frosted: Low,
frosted_windows: true,
frosted_panel: true,
frosted_applets: true,
frosted_maximized_apps: false,
gaps: (0, 4),
active_hint: 1,
```

Contrast is the WCAG ratio[^1], where $L$ is relative luminance:

```typst
$ (L_1 + 0.05) / (L_2 + 0.05) >= 4.5 $
```

---

*Rendered in Postilla, a Markdown notes app for COSMIC. The window is painted
with this rice's terminal scheme, imported as a syntax theme.*

[^1]: Web Content Accessibility Guidelines, success criterion 1.4.3. Normal text wants 4.5:1, large text 3:1.
