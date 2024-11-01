return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local none_ls = require("null-ls")
    none_ls.setup({
      sources = {
         require("none-ls.diagnostics.eslint"),
        none_ls.builtins.formatting.stylua,
        none_ls.builtins.diagnostics.rubocop,
        none_ls.builtins.formatting.rubocop,
        none_ls.builtins.formatting.prettier,
      },
    })
    vim.keymap.set("n", "<leader>kf", vim.lsp.buf.format, {})
  end,
}
