# COSMIC Terminal schemes

Colour schemes for COSMIC Terminal. The desktop `.ron` in `cosmic/` does not
colour ANSI text, so the terminal needs its own import.

1. COSMIC Terminal → **View → Color schemes…** (not Settings → Appearance)
2. **Light** tab → **Import** → a `.ron` from this folder
3. View → Settings → Appearance → Color scheme (light) → the scheme name

If a profile is set as default, set the scheme on that profile too or the
dropdown will look like it did nothing. `cosmic/install.sh` selects **Brass Day**,
so import that one at least.

Every scheme here keeps the 16 ANSI colours of Brass Day. Only the plain text
colour and the dim text change, so bat, lsd, starship, nala and btop look the
same whichever one you pick. The cursor stays sand ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B`.

The ANSI slots follow the rice: `red` is brick ![#A63426](https://placehold.co/12x12/a63426/a63426.png) `#A63426`, the one colour
kept for what is wrong; `green` is tan ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C`; `yellow` is gold
![#855E19](https://placehold.co/12x12/855e19/855e19.png) `#855E19`; `blue` is the sand accent ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B`, so nala's `Updated:` and
`Downloaded:` labels sit in the rice's own colour next to the tan
`No Change:`; `magenta` is amber ![#9E4E1A](https://placehold.co/12x12/9e4e1a/9e4e1a.png) `#9E4E1A`, the warm colour numbers and
warnings take; `cyan` is taupe ![#66635A](https://placehold.co/12x12/66635a/66635a.png) `#66635A`; `white` is
![#22211F](https://placehold.co/12x12/22211f/22211f.png) `#22211F`. Directories are not affected: `LS_COLORS` in `zsh/brassday.zsh` colours
them in truecolor.

## Which one

Coffee ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` is the default. The others move through Brass Day's own greys
and tints: calmer above it, brighter below it, for whoever finds the default
glares at night or reads too dim by day.

| Scheme | Plain text | Contrast | Also used for |
|--------|------------|----------|---------------|
| Brass Day Taupe | ![#67645B](https://placehold.co/12x12/67645b/67645b.png) `#67645B` | 5.0:1 | muted text, the dim text colour |
| Brass Day Clay | ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C` | 5.1:1 | directories (`LS_COLORS`), types |
| Brass Day Tan | ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C` | 5.0:1 | strings, success, the `green` slot |
| Brass Day Sand | ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B` | 5.1:1 | the accent, the cursor and the `blue` slot |
| Brass Day Bark | ![#6F5F36](https://placehold.co/12x12/6f5f36/6f5f36.png) `#6F5F36` | 5.3:1 | a neutral a step from plain text |
| **Brass Day** (default) | ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17` | 14.5:1 | the desktop text colour |
When plain text shares a colour with an ANSI slot, output in that slot stops
standing out: directories in Brass Day Clay, for example, look like plain text.
Brick errors and amber numbers stand out more against the dimmer
schemes than against coffee.

**Bold:** `bright_foreground` (![#0E0E0D](https://placehold.co/12x12/0e0e0d/0e0e0d.png) `#0E0E0D`) only colours bold text when
`use_bright_bold` is on. The baseline config in `cosmic/config/` leaves it off,
so bold text is the plain text colour at weight 800.

Previews are rendered in Fira Mono on the theme background ![#F4ECD6](https://placehold.co/12x12/f4ecd6/f4ecd6.png) `#F4ECD6`, not
taken from the terminal. In COSMIC you get Maple Mono at 77% opacity over the
wallpaper, so text looks a little softer and contrast a little lower.

## Light

**Brass Day** · `BrassDay-term.ron` · coffee ![#1D1C17](https://placehold.co/12x12/1d1c17/1d1c17.png) `#1D1C17`, 14.5:1. The default.

![Brass Day](../assets/cosmic-term/BrassDay-term.png)

**Brass Day Taupe** · `BrassDay-term-taupe.ron` · ![#67645B](https://placehold.co/12x12/67645b/67645b.png) `#67645B`, 5.0:1. Muted text, the dim text colour.

![Brass Day Taupe](../assets/cosmic-term/BrassDay-term-taupe.png)

**Brass Day Clay** · `BrassDay-term-clay.ron` · ![#70614C](https://placehold.co/12x12/70614c/70614c.png) `#70614C`, 5.1:1. Directories (`LS_COLORS`), types.

![Brass Day Clay](../assets/cosmic-term/BrassDay-term-clay.png)

**Brass Day Tan** · `BrassDay-term-tan.ron` · ![#7C602C](https://placehold.co/12x12/7c602c/7c602c.png) `#7C602C`, 5.0:1. Strings, success, the `green` slot.

![Brass Day Tan](../assets/cosmic-term/BrassDay-term-tan.png)

**Brass Day Sand** · `BrassDay-term-sand.ron` · ![#77603B](https://placehold.co/12x12/77603b/77603b.png) `#77603B`, 5.1:1. The accent, the cursor and the `blue` slot.

![Brass Day Sand](../assets/cosmic-term/BrassDay-term-sand.png)

**Brass Day Bark** · `BrassDay-term-bark.ron` · ![#6F5F36](https://placehold.co/12x12/6f5f36/6f5f36.png) `#6F5F36`, 5.3:1. A neutral a step from plain text.

![Brass Day Bark](../assets/cosmic-term/BrassDay-term-bark.png)

Contrast is plain text on the theme background, WCAG 2.
