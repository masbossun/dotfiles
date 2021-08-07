local cmd = vim.cmd

cmd(':command! Reinit luafile ' .. vim.fn.stdpath('config') .. '/init.lua')
cmd('autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)')
cmd(
    [[ let g:startify_custom_header = startify#pad(split(system('figlet -w 100 masbossun'), "\n")) ]])
