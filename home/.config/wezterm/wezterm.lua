local wezterm = require 'wezterm'
local config = {}


config.color_scheme = 'tokyonight_night'
config.font = wezterm.font 'Berkeley Mono'
config.font_size = 14
config.enable_tab_bar = false
config.window_close_confirmation = "NeverPrompt"

return config
