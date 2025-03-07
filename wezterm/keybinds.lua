local wezterm = require("wezterm")
local act = wezterm.action

local module = {}

local keymap = {
	-- close the current pane
	{
		key = "w",
		mods = "CMD",
		action = act.CloseCurrentPane({ confirm = true }),
	},
	-- close the current tab
	{
		key = "e",
		mods = "CMD",
		action = act.CloseCurrentTab({ confirm = true }),
	},
	-- split pane vertically
	{
		key = "d",
		mods = "CMD",
		action = act.SplitVertical({ domain = "CurrentPaneDomain" }),
	},
	-- split pane horizontally
	{
		key = "g",
		mods = "CMD",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
	},
	-- navigate between panes
	{
		key = "h",
		mods = "CMD",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "l",
		mods = "CMD",
		action = act.ActivatePaneDirection("Right"),
	},
	{
		key = "k",
		mods = "CMD",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "j",
		mods = "CMD",
		action = act.ActivatePaneDirection("Down"),
	},
	-- adjust pane size
	{
		key = "h",
		mods = "CMD|SHIFT",
		action = act.AdjustPaneSize({ "Left", 1 }),
	},
	{
		key = "l",
		mods = "CMD|SHIFT",
		action = act.AdjustPaneSize({ "Right", 1 }),
	},
	{
		key = "k",
		mods = "CMD|SHIFT",
		action = act.AdjustPaneSize({ "Up", 1 }),
	},
	{
		key = "j",
		mods = "CMD|SHIFT",
		action = act.AdjustPaneSize({ "Down", 1 }),
	},
}

function module.apply_to_config(config)
	config.keys = keymap
end

return module
