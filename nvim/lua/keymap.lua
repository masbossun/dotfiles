local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', '<Space>', '<NOP>', opts)
vim.g.mapleader = ' '

-- explorer
map('n', '<Leader>m', ':NvimTreeToggle<CR>', opts)

-- no hl
map('n', '<Esc><Esc>', ':noh<CR>', opts)

-- move around window
map('n', '<C-h>', '<C-w>h', {silent = true})
map('n', '<C-j>', '<C-w>j', {silent = true})
map('n', '<C-k>', '<C-w>k', {silent = true})
map('n', '<C-l>', '<C-w>l', {silent = true})

-- better indent
map('v', '<', '<gv', opts)
map('v', '>', '>gv', opts)

-- better tab
map('n', '<Tab>', ':bnext<CR>', opts)
map('n', '<S-Tab>', ':bprevious<CR>', opts)

-- move selected line
map('x', 'K', ':move \'<-2<CR>gv-gv', opts)
map('x', 'J', ':move \'>+1<CR>gv-gv', opts)

-- terminal move
map('n', '<Leader>n', ':wa<CR>:vertical botright term<CR>', opts)
map('t', '<Esc>', [[ <C-\><C-n> ]], opts)

-- lsp saga move
map('n', 'K', ':Lspsaga hover_doc<CR>', opts)
