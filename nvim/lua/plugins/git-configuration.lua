return {
  { "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup {
        on_attach = function(bufnr)
          local gitsigns = require('gitsigns')

          local function map(mode, l, r, opts)
            opts = opts or {}
            opts.buffer = bufnr
            vim.keymap.set(mode, l, r, opts)
          end

          -- Mapeos personalizados
          map("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
          map("n", "<leader>gd", ":Gitsigns diffthis<CR>", {})
          map("n", "<leader>gb", ":lua require('gitsigns').blame_line{full=true}<CR>", {})
          map("n", "<leader>gtb", ":Gitsigns toggle_current_line_blame<CR>", {})

          -- Navegación entre hunks
          map('n', ']c', function()
            if vim.wo.diff then
              vim.cmd.normal({']c', bang = true})
            else
              gitsigns.next_hunk()
            end
          end)

          map('n', '[c', function()
            if vim.wo.diff then
              vim.cmd.normal({'[c', bang = true})
            else
              gitsigns.prev_hunk()
            end
          end)
        end
      }
    end
  },
  { "tpope/vim-fugitive" }
}
