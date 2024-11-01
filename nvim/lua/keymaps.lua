local keymap = vim.keymap
local opts = { noremap = true, silent = true }

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move between windows (avoiding C-w C-w)
keymap.set("n", "<C-h>", "<C-w>h") -- Move to left window
keymap.set("n", "<C-j>", "<C-w>j") -- Move to below window
keymap.set("n", "<C-k>", "<C-w>k") -- Move to above window
keymap.set("n", "<C-l>", "<C-w>l") -- Move to right window

-- Resize window (avoiding arrow keys)
keymap.set("n", "<C-H>", "<C-w><") -- Decrease width
keymap.set("n", "<C-L>", "<C-w>>") -- Increase width
keymap.set("n", "<C-K>", "<C-w>+") -- Increase height
keymap.set("n", "<C-J>", "<C-w>-") -- Decrease height

-- Escape from insert mode
keymap.set("i", "kk", "<Esc>")

-- Reload configuration
keymap.set("n", "<leader>r", ":so %<CR>")

-- Save file
keymap.set("n", "<leader>s", ":w<CR>")

-- Quick quit and save
keymap.set("n", "QQ", ":q!<Enter>")
keymap.set("n", "WW", ":w!<Enter>")

-- Switch buffers
keymap.set("n", "<Tab>", ":bnext<CR>", opts)
keymap.set("n", "<S-Tab>", ":bprev<CR>", opts)

--  Close current buffer without closing the window
keymap.set("n", "<leader>c", ":bd<CR>", opts)
-- This closes the current buffer but keeps the window open, allowing you to maintain the layout.

--  Toggle between the last two buffers
keymap.set("n", "<leader><leader>", "<C-^>", opts)
-- Quickly switch to the last used buffer, making it easier to alternate between two files.

--  Search and replace the word under cursor throughout the file
keymap.set("n", "<leader>sr", [[:%s/\<<C-r><C-w>\>//g<Left><Left>]], opts)
-- Starts a search and replace for the word under the cursor across the whole file.
-- <leader>sr: Trigger the search and replace, and you'll be able to type the replacement.

--  Go to beginning or end of file and line quickly
keymap.set("n", "gg", "gg0", opts) -- Go to start of file and line
keymap.set("n", "G", "G$", opts)   -- Go to end of file and line
-- gg: Takes you to the start of the file and line
-- G: Takes you to the end of the file and line
