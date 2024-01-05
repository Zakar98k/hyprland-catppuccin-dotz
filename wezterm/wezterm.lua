local wezterm = require("wezterm")
local config = {}

-- ### FONT CONFIG ### ---
config.font_size = 12
config.font = wezterm.font_with_fallback({
	"deserted",
	{
		family = "Symbols Nerd Font",
	},
	"Noto Color Emoji",
	"Noto Sans CJK Regular",
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
})

-- ### FONT RULES ### ---
config.font_rules = {
	{
		intensity = "Bold",
		italic = false,
		font = wezterm.font({
			family = "beachedttf",
		}),
	},

	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font({
			family = "beachedttf",
			style = "Italic",
		}),
	},
}

config.enable_wayland = true
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

config.inactive_pane_hsb = {
	saturation = 0.9,
	brightness = 0.8,
}

-- ### COLOR CONFIG ### ---
config.colors = {
	-- Start flavours
  foreground = '#cdd6f4',
  background = '#1e1d2d',

  cursor_bg = '#cdd6f4',
  cursor_fg = '#1e1d2d',

  cursor_border = '#cdd6f4',

  scrollbar_thumb = '#45475a',
  split = '#181825',

  ansi = {
    '#1e1d2d',
    '#f38ba8',
    '#a6e3a1',
    '#f9e2af',
    '#89b4fa',
    '#cba6f7',
    '#94e2d5',
    '#cdd6f4',
  },
  brights = {
    '#1e1d2d',
    '#f38ba8',
    '#a6e3a1',
    '#f9e2af',
    '#89b4fa',
    '#cba6f7',
    '#94e2d5',
    '#b4befe',
  },

  compose_cursor = '#fab387',

  tab_bar = {
    background = "#1e1d2d",
    active_tab = {
      bg_color = "#181825",
      fg_color = "#cdd6f4",
      intensity = 'Normal',
      underline = 'Single',
      italic = true,
    },


    inactive_tab = {
      bg_color = "#1e1d2d",
      fg_color = "#585b70",
    },

    inactive_tab_hover = {
      bg_color = "#181825",
      fg_color = "#585b70",
    },

    new_tab = {
      bg_color = "#f9e2af",
      fg_color = "#1e1d2d",
    },

    new_tab_hover = {
      bg_color = "#a6e3a1",
      fg_color = "#1e1d2d",
    },
  }
	-- End flavours
}

return config
