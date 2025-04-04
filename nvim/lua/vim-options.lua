vim.g.mapleader = " "
vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.opt.relativenumber = true
vim.opt.clipboard="unnamedplus"
vim.opt.splitright = true
vim.opt.splitbelow = true
vim.filetype.add({
  extension = {
    jbuilder = "ruby" 
  },
})
