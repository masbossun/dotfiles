local o = vim.opt
local g = vim.g
local wo = vim.wo
local cmd = vim.cmd

-- o.clipboard:append("unnamedplus")
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
o.splitright = true

cmd("set fillchars=vert:\\▐,eob:\\ ")

-- cmd "autocmd WinNew * wincmd L"
