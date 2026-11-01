-- BrassDay for WezTerm, part of cosmic-brassday-theme (MIT).
-- Colours follow the COSMIC Terminal scheme (cosmic-term/).
--
-- Install: ./wezterm/install.sh puts this in ~/.config/wezterm/, then in
-- ~/.config/wezterm/wezterm.lua:
--   config.colors = require("brassday")
-- To follow COSMIC's Dark / Light toggle with the Brass half installed too:
--   local dark = (wezterm.gui and wezterm.gui.get_appearance() or "Dark"):find("Dark")
--   config.colors = require(dark and "brass" or "brassday")

return {
  foreground = "#1D1C17",
  background = "#F4ECD6",

  cursor_bg = "#77603B",
  cursor_fg = "#F4ECD6",
  cursor_border = "#77603B",
  compose_cursor = "#9E4E1A",

  selection_bg = "#E3D8BB",
  selection_fg = "none",

  scrollbar_thumb = "#E3D8BB",
  split = "#E3D8BB",

  -- black, red, green, yellow, blue, magenta, cyan, white
  ansi = { "#F7F1E0", "#A63426", "#7C602C", "#6F5F36", "#77603B", "#9E4E1A", "#66635A", "#22211F" },
  brights = { "#9A978C", "#8D2C1F", "#796335", "#887028", "#715E3D", "#814014", "#6E6454", "#0E0E0D" },

  copy_mode_active_highlight_bg = { Color = "#77603B" },
  copy_mode_active_highlight_fg = { Color = "#F4ECD6" },
  copy_mode_inactive_highlight_bg = { Color = "#6F5F36" },
  copy_mode_inactive_highlight_fg = { Color = "#F4ECD6" },

  quick_select_label_bg = { Color = "#9E4E1A" },
  quick_select_label_fg = { Color = "#F4ECD6" },
  quick_select_match_bg = { Color = "#6F5F36" },
  quick_select_match_fg = { Color = "#F4ECD6" },

  tab_bar = {
    background = "#F4ECD6",
    active_tab = { bg_color = "#77603B", fg_color = "#F4ECD6", intensity = "Bold" },
    inactive_tab = { bg_color = "#FBF5E7", fg_color = "#70614C" },
    inactive_tab_hover = { bg_color = "#EDE3C9", fg_color = "#1D1C17" },
    new_tab = { bg_color = "#F4ECD6", fg_color = "#70614C" },
    new_tab_hover = { bg_color = "#EDE3C9", fg_color = "#77603B" },
  },
}
