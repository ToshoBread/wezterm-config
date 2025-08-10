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

	-- Swap Number and Symbol Keys
	{ key = "1", action = act.SendKey({ key = "!" }) },
	{ key = "2", action = act.SendKey({ key = "@" }) },
	{ key = "3", action = act.SendKey({ key = "#" }) },
	{ key = "4", action = act.SendKey({ key = "$" }) },
	{ key = "5", action = act.SendKey({ key = "%" }) },
	{ key = "6", action = act.SendKey({ key = "^" }) },
	{ key = "7", action = act.SendKey({ key = "&" }) },
	{ key = "8", action = act.SendKey({ key = "*" }) },
	{ key = "9", action = act.SendKey({ key = "(" }) },
	{ key = "0", action = act.SendKey({ key = ")" }) },

	{ key = "!", mods = "SHIFT", action = act.SendKey({ key = "1" }) },
	{ key = "@", mods = "SHIFT", action = act.SendKey({ key = "2" }) },
	{ key = "#", mods = "SHIFT", action = act.SendKey({ key = "3" }) },
	{ key = "$", mods = "SHIFT", action = act.SendKey({ key = "4" }) },
	{ key = "%", mods = "SHIFT", action = act.SendKey({ key = "5" }) },
	{ key = "^", mods = "SHIFT", action = act.SendKey({ key = "6" }) },
	{ key = "&", mods = "SHIFT", action = act.SendKey({ key = "7" }) },
	{ key = "*", mods = "SHIFT", action = act.SendKey({ key = "8" }) },
	{ key = "(", mods = "SHIFT", action = act.SendKey({ key = "9" }) },
	{ key = ")", mods = "SHIFT", action = act.SendKey({ key = "0" }) },

	{ key = "[", action = act.SendKey({ key = "{" }) },
	{ key = "]", action = act.SendKey({ key = "}" }) },
	{ key = "{", mods = "SHIFT", action = act.SendKey({ key = "[" }) },
	{ key = "}", mods = "SHIFT", action = act.SendKey({ key = "]" }) },
}

return keybinds
