local o = vim.opt
local g = vim.g
local cmd = vim.cmd

o.clipboard:append("unnamedplus")
o.exrc = true
o.relativenumber = true
o.nu = true
o.hidden = true
o.tabstop = 2
o.softtabstop = 2
o.shiftwidth = 2
o.expandtab = true
o.smartindent = true
o.smartcase = true
o.undofile = true
o.incsearch = true
o.scrolloff = 8
o.signcolumn = "yes"
o.termguicolors = true

g.nvim_tree_auto_open = 1
g.nvim_tree_auto_close = 1

cmd("set fillchars=vert:\\▐")
