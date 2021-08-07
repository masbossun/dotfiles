local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
        'git', 'clone', 'https://github.com/wbthomason/packer.nvim',
        install_path
    })
    execute 'packadd packer.nvim'
end

return require('packer').startup(function()
    -- packer
    use 'wbthomason/packer.nvim'

    -- lsp stuff
    use 'neovim/nvim-lspconfig'
    use 'ray-x/lsp_signature.nvim'
    use 'hrsh7th/nvim-compe'
    use 'glepnir/lspsaga.nvim'

    -- lsp: lua
    use 'folke/lua-dev.nvim'

    -- helper
    use 'terrortylor/nvim-comment'

    -- navigation
    use 'kyazdani42/nvim-tree.lua'

    -- cosmetics
    use 'mhinz/vim-startify'
    use 'norcalli/nvim-colorizer.lua'
    use 'chriskempson/base16-vim'

    require('nvim_comment').setup()
    require('lspsaga').init_lsp_saga()
    require('colorizer').setup({"*"}, {names = false})

end)

