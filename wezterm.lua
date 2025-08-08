-- Pull in the wezterm API
local wezterm = require("wezterm")

-- External configurations
local keybinds = require("keybinds")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	--Default Shell
	-- default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" }, -- Windows
	default_prog = { "zsh" },

	-- Custom keybinds
	keys = { table.unpack(keybinds) },
	disable_default_key_bindings = true,

	-- Terminal Behavior
	term = "xterm-256color",
	swallow_mouse_click_on_pane_focus = false,

	-- Terminal Appearance
	color_scheme = "Deafened (terminal.sexy)",
	-- font = wezterm.font("FiraCode Nerd Font Mono", { weight = "Regular", italic = false }),
	font = wezterm.font("JetBrainsMono Nerd Font", { weight = "Regular", italic = false }),
	window_background_opacity = 0.85,
	font_size = 16,
	line_height = 1,
	cell_width = 1,

	-- Cursor Appearance
	default_cursor_style = "BlinkingBar",
	animation_fps = 1,
	cursor_blink_ease_in = "Constant",
	cursor_blink_ease_out = "Constant",
	colors = {
		cursor_bg = "white",
		cursor_border = "white",
	},

	-- Window Appearance
	window_decorations = "RESIZE", -- Removes the title bar but allows for window resizing
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- Miscellaneous Settings
	enable_wayland = false,
	max_fps = 120,
	prefer_egl = true,
	enable_csi_u_key_encoding = true,
}

return config
