return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local function toggle_neotree()
      local is_open = vim.fn.bufexists("Neo-tree filesystem [1]") == 1
      if is_open then
        vim.cmd("Neotree close")
      else
        vim.cmd("Neotree filesystem reveal left")
      end
    end

    vim.keymap.set("n", "<C-n>", toggle_neotree)
  end,
}
