-- Pull in the wezterm API
local wezterm = require("wezterm")

-- External configurations
local keybinds = require("keybinds")

-- This will hold the configuration.
local config = wezterm.config_builder()

config = {
	--Default Shell
	default_prog = { "C:\\Program Files\\PowerShell\\7\\pwsh.exe" },

	-- Custom keybinds
	keys = { table.unpack(keybinds) },
	disable_default_key_bindings = true,

	-- Terminal Behavior
	term = "xterm-256color",
	swallow_mouse_click_on_pane_focus = true,

	-- Terminal Appearance
	--color_scheme = "Tokyo Night",
	color_scheme = "Deafened (terminal.sexy)",
	-- font = wezterm.font("JetBrainsMonoNL NF", { weight = "Regular", italic = false }),
	-- font = wezterm.font("Victor Mono"),
	-- font = wezterm.font("ZedMono NFM Extd"),
	font = wezterm.font_with_fallback({ "ZedMono NFM Extd", "FiraCode Nerd Font Mono" }),
	window_background_opacity = 0.85,
	font_size = 12,
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
	max_fps = 120,
	prefer_egl = true,
	enable_csi_u_key_encoding = true,
}

return config
