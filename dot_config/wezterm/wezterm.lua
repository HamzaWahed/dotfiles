local wezterm = require("wezterm")

local config = {
	color_scheme = "Catppuccin Macchiato",
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrainsMono Nerd Font"),
	window_padding = {
		left = 0,
		right = 0,
		top = 5,
		bottom = 0,
	},
	max_fps = 240,
	enable_kitty_graphics = true,
	font_size = 15.0,
	hide_tab_bar_if_only_one_tab = true,
	default_cursor_style = "SteadyBlock",
	animation_fps = 1,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
}

return config
