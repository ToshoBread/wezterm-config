-- Pull in the wezterm API
local wezterm = require("wezterm")

-- External configurations
local keybinds = require("keybinds")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices
config = {
	--Default Shell
	default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" },

	-- Custom keybinds
	keys = { table.unpack(keybinds) },
	disable_default_key_bindings = true,

	--Terminal Appearance
	color_scheme = "Tokyo Night",
	--font = wezterm.font("Jetbrains Mono", {}),
	window_background_opacity = 0.95,
	font_size = 12,
	line_height = 1.3,
	--default_cursor_style = "Line",
	colors = {
		cursor_bg = "white",
		cursor_border = "white",
	},

	--Window Appearance
	window_decorations = "RESIZE", -- Removes the title bar but allows for window resizing
	hide_tab_bar_if_only_one_tab = true,
	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	--Miscellaneous Settings
	max_fps = 120,
	prefer_egl = true,
}
-- and finally, return the configuration to wezterm
return config
