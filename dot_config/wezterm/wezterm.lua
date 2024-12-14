local wezterm = require("wezterm")
local colors = dofile(os.getenv("HOME") .. "/.config/nvim/lua/config/colors.lua")

local config = {
	color_scheme = "Eldritch",
	window_decorations = "RESIZE",
	font = wezterm.font("JetBrainsMono Nerd Font"),
	window_padding = {
		left = 2,
		right = 2,
		top = 15,
		bottom = 0,
	},
	max_fps = 240,
	enable_kitty_graphics = true,
	enable_tab_bar = true,
	font_size = 15.0,
	hide_tab_bar_if_only_one_tab = true,
	default_cursor_style = "SteadyBlock",
	animation_fps = 1,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",

	colors = {
		-- The default text color
		foreground = colors["linkarzu_color14"],
		-- The default background color
		background = colors["linkarzu_color10"],

		-- Overrides the cell background color when the current cell is occupied by the cursor
		cursor_bg = colors["linkarzu_color24"],
		-- Overrides the text color when the current cell is occupied by the cursor
		cursor_fg = colors["linkarzu_color10"],
		-- Specifies the border color of the cursor when the cursor style is set to Block
		cursor_border = colors["linkarzu_color02"],

		-- The foreground color of selected text
		selection_fg = colors["linkarzu_color14"],
		-- The background color of selected text
		selection_bg = colors["linkarzu_color16"],

		-- The color of the scrollbar "thumb"; the portion that represents the current viewport
		scrollbar_thumb = colors["linkarzu_color10"],

		-- The color of the split lines between panes
		split = colors["linkarzu_color02"],
	},
}

return config
