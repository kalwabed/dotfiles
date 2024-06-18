-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config.window_background_opacity = 0.8

-- For example, changing the color scheme:
config.color_scheme = 'catppuccin-macchiato'

config.font = wezterm.font_with_fallback {
	'Fira Code',
	'JetBrains Mono',
} 

config.font_size = 10
config.enable_scroll_bar = false
config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.initial_rows=35
config.initial_cols=105

-- config.window_padding = {
-- 	left = 10,
-- 	right = 10,
-- 	top = 10,
-- 	bottom = 0,
-- }

-- and finally, return the configuration to wezterm
return config
