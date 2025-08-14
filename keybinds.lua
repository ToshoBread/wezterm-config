---@diagnostic disable: unused-local

local wezterm = require("wezterm")
local act = wezterm.action

local keybinds = {
	-- General keybinds
	{ key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	{ key = "-", mods = "ALT", action = act.DecreaseFontSize },
	{ key = "=", mods = "ALT", action = act.IncreaseFontSize },

	{ key = "F11", mods = "NONE", action = act.ToggleFullScreen },

	{
		key = "Z",
		mods = "CTRL|SHIFT",
		action = wezterm.action_callback(function(window, pane)
			local overrides = window:get_config_overrides() or {}
			overrides.window_background_opacity = not overrides.window_background_opacity and 1 or nil
			window:set_config_overrides(overrides)
		end),
	},

	{ key = "Enter", mods = "ALT", action = act.SendKey({ key = "Escape" }) },

	-- Swap brackets and braces
	{ key = "[", action = act.SendKey({ key = "{" }) },
	{ key = "]", action = act.SendKey({ key = "}" }) },
	{ key = "{", mods = "SHIFT", action = act.SendKey({ key = "[" }) },
	{ key = "}", mods = "SHIFT", action = act.SendKey({ key = "]" }) },
}

return keybinds
