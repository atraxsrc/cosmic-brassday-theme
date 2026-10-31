# Firefox - Brass Day

Firefox chrome matching the COSMIC Brass Day rice. Ported from the DarkGold
baseline (theme recipe and stylesheets), recoloured for parchment and sand.

## Palette

Stylesheets:

| Hex       | Role                      |
|-----------|---------------------------|
| ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6` | Frame, page chrome, text on sand |
| ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) `#FBF5E7` | Panels, menus             |
| ![#B3ADA2](https://placehold.co/12x12/b3ada2/b3ada2.png) `#B3ADA2` | Menu hover row (sand tinted into the panel) |
| ![#AAA193](https://placehold.co/12x12/aaa193/aaa193.png) `#AAA193` | Menu pressed row          |
| ![#E3D8BB](https://placehold.co/12x12/e3d8bb/e3d8bb.png) `#E3D8BB` | Separators, menu border   |
| ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` | Accent, URL bar border, hover rail |
| ![#715E3D](https://placehold.co/12x12/715e3d/715e3d.png) `#715E3D` | Accent hover              |
| ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` | Menu text, new tab active |
| ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` | Links                     |
| ![#0E0E0D](https://placehold.co/12x12/0e0e0d/0e0e0d.png) `#0E0E0D` | Hover text                |

## Structure

```
firefox/
├── theme/            WebExtension theme source (Cosmic Brass Day)
│   ├── manifest.json     DarkGold's 24 colour keys + URL bar ring and selection
│   └── icons/            32 / 48 / 64 / 96 / 128, cropped from brassday-geisha
├── chrome/
│   ├── userChrome.css    browser UI: rounded corners, sand menu hover
│   └── userContent.css   new tab page: sand accents, blank shortcut tiles
└── install.sh            copies chrome/ into the default profile
```

Two layers, use one or both:

1. **Theme (colours):** `theme/` colours the toolbar, tabs, URL bar, menus,
   sidebar and new tab page. This is the main look. Load it from the folder
   (below) or from addons.mozilla.org once it is listed there.
2. **Stylesheets (optional):** `chrome/` adds rounded corners, sand menu
   hover, sand accents and a blank new-tab grid on top of the theme. They
   also work with Firefox's built-in Light theme.

## Theme

Same colour keys and roles as DarkGold's Firefox theme: icons take the calm
colour (tan here, gold there), and everything "hot" (tab line, pressed
button, menu and sidebar selection, loading) takes the accent (sand here,
coral there). Brass Day keeps its hot roles warm rather than loud; brick is kept for errors
and does not appear in the chrome.
One extra key, `toolbar_field_border_focus`, pins the focused URL bar ring to
sand so it does not fall back to the desktop accent when
`widget.non-native-theme.use-theme-accent` is on (the Firefox default on
Linux). Two more, `toolbar_field_highlight` and `toolbar_field_highlight_text`,
colour selected text in the URL bar the same way, as DarkGold does. Every
text colour clears WCAG AA (4.5:1) on its background; icons and the tab
line clear 3:1.

| Hex       | Where in the theme                          |
|-----------|---------------------------------------------|
| ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6` | Frame, new tab, text on sand selections    |
| ![#FBF5E7](https://placehold.co/12x12/FBF5E7/FBF5E7.png) `#FBF5E7` | Toolbar, menus                              |
| ![#E3D8BB](https://placehold.co/12x12/e3d8bb/e3d8bb.png) `#E3D8BB` | URL bar field, button hover, sidebar border |
| ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` | Body text                                   |
| ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` | Menu border                                 |
| ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` | Icons, inactive tab text                    |
| ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` | Focused tab text, focused URL bar ring and text selection, tab line, pressed button, menu and sidebar selection, loading, attention |

Build the package:

```bash
cd theme && zip -r -X ../cosmic-brassday.zip . -x '.*'
```

Try it without installing: `about:debugging#/runtime/this-firefox` → **Load
Temporary Add-on** → pick `theme/manifest.json`. It is gone on restart. To
keep it, upload the zip to addons.mozilla.org (self-distribution is enough)
and install the signed `.xpi` it hands back.

## Stylesheets

```bash
./install.sh
```

Copies `chrome/` into your `*.default-release` profile, backs up anything it
replaces, and adds two prefs to `user.js`: one so Firefox reads the
stylesheets, one so the accent (URL bar ring, buttons) comes from the theme
and not the desktop. Then **fully restart**
Firefox - `userChrome.css` is parsed only at startup.

To install into another profile (a test profile, say), pass its folder:

```bash
./install.sh ~/.mozilla/firefox/<profile>
```

Every rice's `install.sh` takes the same argument, so switching a test
profile between rices is one command plus a restart.

Manual equivalent:

1. `about:config` → `toolkit.legacyUserProfileCustomizations.stylesheets` = `true`
2. `about:support` → Profile Directory → Open Directory
3. Copy `chrome/` in
4. Restart

To undo: delete the two files from the profile's `chrome/` folder and restart.

## Notes

- **Never set `--panel-*` or `--arrowpanel-*` on `:root`.** Those variables leak
  into the toolbar and blank the URL bar. They stay on the popup elements.
- **Context menus do not get an extra element border.** A second stroke made
  the right-click panel look detached. Hover is a sand-tinted ![#B3ADA2](https://placehold.co/12x12/b3ada2/b3ada2.png) `#B3ADA2`
  row with a 3px sand rail on the left, not a full ring.
- **Native menu styling is switched off** (`appearance: none`) on menus and
  menu rows. Without it the COSMIC/GTK hover paints over the colours above.
- **`[_moz-menuactive="true"]` is required.** Firefox marks the active
  context-menu row with that attribute, not only `:hover`.
- **`userContent.css` is colours plus one hide rule.** It sets accent / focus /
  link colours and hides shortcut artwork (`opacity: 0`) so the new-tab tiles
  stay blank. No size or position rules on the tiles.
- Built against **Firefox 154**.

## License

MIT, same as the rest of the repo.
