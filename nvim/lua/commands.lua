local cmd = vim.cmd

cmd([[ command! Format execute 'lua vim.lsp.buf.format({async= true})' ]])

cmd(":command! Reinit luafile " .. vim.fn.stdpath("config") .. "/init.lua")
cmd("autocmd BufWritePre *.lua :Format")
cmd([[ let g:startify_custom_header = startify#pad(split(system('figlet -w 100 masbossun'), "\n")) ]])
