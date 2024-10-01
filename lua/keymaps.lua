local keymap = vim.keymap;
local opts = {noremap = true, silent = true};

-- Split window
keymap.set("n", "ss", ":split<Return>", opts)
keymap.set("n", "sv", ":vsplit<Return>", opts)

-- Select all
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Move window
keymap.set("n", "sh", "<C-w>h")
keymap.set("n", "sk", "<C-w>k")
keymap.set("n", "sj", "<C-w>j")
keymap.set("n", "sl", "<C-w>l")

-- Resize window
keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set("i", "kk", "<Esc>")
keymap.set("n", '<leader>r', ":so %<CR>")
keymap.set("n", "<leader>s", ":w<CR>")
