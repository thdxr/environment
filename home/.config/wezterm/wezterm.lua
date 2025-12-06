local wezterm = require 'wezterm'
local config = {}


config.color_scheme = 'tokyonight_night'
config.font = wezterm.font 'TX-02'
config.font_size = 14
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"
config.enable_wayland = false
config.window_decorations = "RESIZE"
config.adjust_window_size_when_changing_font_size = false


return config
