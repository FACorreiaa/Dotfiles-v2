local wezterm = require "wezterm"

function scheme_for_appearance(appearance)
  if appearance:find "Dark" then
    return "Catppuccin Mocha"
  else
    return "Catppuccin Latte"
  end
end

return {
  -- ...your existing config
  automatically_reload_config = true,
  window_close_confirmation = "NeverPrompt",
  window_decorations = "RESIZE",
  default_cursor_style = "BlinkingBar",
  font_size = 12.5,
  color_scheme = scheme_for_appearance(wezterm.gui.get_appearance()),
  font = wezterm.font("FiraCode Nerd Font", { weight = "Bold" }),
  window_padding = {
    left = 3,
    right = 3,
    top = 0,
    bottom = 0,
  },
  background = {
    {
      source = {
        File = "/Users/fernando_idwell/Documents/Apulia.jpg",
      },
      hsb = {
        hue = 1.0,
        saturation = 1.02,
        brightness = 0.25,
      },
      width = "100%",
      height = "100%",
    },
    {
      source = {
        Color = "#282c35",
      },
      width = "100%",
      height = "100%",
      opacity = 0.55,
    },
  },
}