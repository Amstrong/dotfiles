local themes = {
  catppuccin = "catppuccin",
  github_dark = "github_dark_dimmed",
  github_light = "github_light",
  kanagawa = "kanagawa-dragon",
  cyberdream = "cyberdream"
}

local function activate_theme(theme_name)
  local theme = themes[theme_name]
  if theme then
    vim.cmd("colorscheme " .. theme)
    vim.opt.termguicolors = true
    
  else
    print("Theme not found: " .. theme_name)
  end
end

activate_theme("catppuccin")
