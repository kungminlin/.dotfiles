local module = {}

function module.apply_to_config(config)
	config.color_scheme = "Catppuccin Macchiato"
	config.hide_tab_bar_if_only_one_tab = false
	config.macos_window_background_blur = 10
	config.window_background_opacity = 0.95
	config.use_fancy_tab_bar = false
	config.tab_bar_at_bottom = true
end

return module
