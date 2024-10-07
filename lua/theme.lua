local themes = {
    catppuccin = function()
        vim.cmd("colorscheme catppuccin")
    end,
    github = function()
        vim.cmd('colorscheme github_dark_high_contrast')
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

  activate_theme("github")



-- Options:
-- Catppuccin: latte, frappe,macchiato, mocha
-- Kanagawa: kanagawa-lotus, kanagawa-dragon kanagawa-wave
-- Github: github_dark_high_contrast, github_dark_dimmed, github_dark_default, github_dark, github_dark, github_light_tritanopia
