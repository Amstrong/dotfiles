return {
  "rose-pine/neovim",
  name = "rose-pine",
  config = function()
    require("rose-pine").setup({
      variant = "moon",  -- Cambia 'moon' por 'main' si prefieres la otra variante
    })
    vim.cmd("colorscheme rose-pine")
  end,
}
