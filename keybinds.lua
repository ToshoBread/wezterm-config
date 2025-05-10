local wezterm = require("wezterm")
local act = wezterm.action

local backgroundOpacity = 1

local keybinds = {
	-- General Keybinds
	{ key = "v", mods = "CTRL", action = act.PasteFrom("Clipboard") },

	{ key = "-", mods = "ALT", action = act.DecreaseFontSize },
	{ key = "=", mods = "ALT", action = act.IncreaseFontSize },

	{ key = "F11", mods = "NONE", action = act.ToggleFullScreen },

	-- Tab Keybinds
	{ key = "t", mods = "ALT", action = act.SpawnTab("CurrentPaneDomain") },
	{ key = "w", mods = "ALT", action = act.CloseCurrentTab({ confirm = true }) },

	{ key = "1", mods = "ALT", action = act.ActivateTab(0) },
	{ key = "2", mods = "ALT", action = act.ActivateTab(1) },
	{ key = "3", mods = "ALT", action = act.ActivateTab(2) },
	{ key = "4", mods = "ALT", action = act.ActivateTab(3) },

	-- Multiplexing Keybinds
	{ key = "m", mods = "ALT", action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
	{ key = "m", mods = "CTRL|ALT", action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },

	{ key = "h", mods = "ALT", action = act.ActivatePaneDirection("Left") },
	{ key = "l", mods = "ALT", action = act.ActivatePaneDirection("Right") },
	{ key = "k", mods = "ALT", action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = "ALT", action = act.ActivatePaneDirection("Down") },

	{ key = "w", mods = "CTRL|ALT", action = act.CloseCurrentPane({ confirm = true }) },

	{ key = "h", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Left", 5 }) },
	{ key = "l", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Right", 5 }) },
	{ key = "k", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Up", 5 }) },
	{ key = "j", mods = "CTRL|ALT", action = act.AdjustPaneSize({ "Down", 5 }) },

	-- Misc Keybinds
	{ key = "Y", mods = "CTRL|SHIFT", action = wezterm.action.SendKey({ key = "Y", mods = "CTRL|SHIFT" }) },

	{ key = "Enter", mods = "SHIFT", action = wezterm.action.SendString("\x1b[13;2u") },

	{
		key = "Space",
		mods = "CTRL|SHIFT",
		action = wezterm.action_callback(function(window, pane)
			local transclucent = 0.9
			local opaque = 1
			backgroundOpacity = (backgroundOpacity <= transclucent) and opaque or transclucent
			window:set_config_overrides({
				window_background_opacity = backgroundOpacity,
			})
		end),
	},

	{ key = "Enter", mods = "ALT", action = wezterm.action.SendKey({ key = "Escape" }) },
}

return keybinds
