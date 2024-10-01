local themes = {
    catppuccin = function()
        vim.cmd("colorscheme catppuccin")
    end,
    github = function()
        vim.cmd('colorscheme github_dark_colorblind')
    end,
    kanagawa = function()
        vim.cmd('colorscheme kanagawa-lotus')
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

  activate_theme("catppuccin")



-- Options:
-- Catppuccin: latte, frappe,macchiato, mocha
-- Kanagawa: kanagawa-lotus, kanagawa-dragon kanagawa-wave
