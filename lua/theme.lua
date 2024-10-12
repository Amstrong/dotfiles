local themes = {
    catppuccin = function()
        vim.cmd("colorscheme catppuccin")
    end,
    github_dark = function()
        vim.cmd('colorscheme github_dark_high_contrast')
    end,
    github_light = function()
        vim.cmd('colorscheme github_light')
    end,
    kanagawa = function()
        vim.cmd('colorscheme kanagawa-dragon')
    end
}

local function activate_theme(theme_name)
    if themes[theme_name] then
        themes[theme_name]()
        vim.opt.termguicolors = true
    else
        print("Theme not found: " .. theme_name)
    end
end

  activate_theme("github_dark")



-- Options:
-- Catppuccin: latte, frappe,macchiato, mocha
-- Kanagawa: kanagawa-lotus, kanagawa-dragon kanagawa-wave
-- Github: github_dark_high_contrast, github_dark_dimmed, github_dark_default, github_dark, github_dark, github_light_tritanopia
