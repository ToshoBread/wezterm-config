local wezterm = require("wezterm")
local act = wezterm.action
local keybinds = {
	-- General keybinds
	{ key = "c", mods = "CTRL", action = act.CopyTo("Clipboard") },
	{ key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	-- Multiplexing Keybinds
	{ key = "m", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "m", mods = "CTRL|ALT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },

	{ key = "w", mods = "ALT", action = act.CloseCurrentPane({ confirm = true }) },

	{ key = "h", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "l", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Right", 5 }) },
	{ key = "k", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "j", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Down", 5 }) },

	{ key = "-", mods = "ALT", action = act.DecreaseFontSize },
	{ key = "=", mods = "ALT", action = act.IncreaseFontSize },
}

return keybinds
