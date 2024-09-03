local wezterm = require 'wezterm'
local config = {}

-- config.color_scheme = 'Rosé Pine Moon (Gogh)'
config.color_scheme = 'rose-pine-dawn'
config.font = wezterm.font('JetBrains Mono')
config.font_size = 14

config.enable_tab_bar = false

config.default_cursor_style = "BlinkingBlock"
config.animation_fps = 1
config.cursor_blink_ease_in = 'Constant'
config.cursor_blink_ease_out = 'Constant'
config.cursor_blink_rate = 700

return config
