return {
  "romgrk/barbar.nvim",
  init = function()
    vim.g.barbar_auto_setup = false
    vim.keymap.set("n", "<tab>", ":BufferNext<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<Leader>2", ":BufferPrevious<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<Leader>3", ":BufferClose<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<Leader>p", ":BufferPick<CR>", { noremap = true, silent = true })
  end,
  opts = {
    animation = true,
    minimun_padding = 2,
  },
  version = "^1.7.0",
}
