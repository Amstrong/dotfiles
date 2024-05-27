return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  lazy = false,
  config = function()
    vim.cmd("colorscheme catppuccin")
    vim.opt.termguicolors = true
    vim.cmd("colorscheme catppuccin")
  end,
}
