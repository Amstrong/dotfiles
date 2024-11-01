return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup({
      options = {
        theme = 'auto',
      },
      secabsolutations = {
        lualine_c = {
          {
            'filename',
            path = 1  -- 0 = filename(default), 1 = relative, 2 = absolute 
          }
        },
      },
    })
  end,
}
