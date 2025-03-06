local wezterm = require("wezterm")
local visuals = require("visuals")
local keybinds = require("keybinds")

local config = {}

config = wezterm.config_builder()

visuals.apply_to_config(config)
keybinds.apply_to_config(config)

return config
