-- local execute = vim.api.nvim_command
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
    use 'williamboman/nvim-lsp-installer'

    -- formatting
    use 'jose-elias-alvarez/null-ls.nvim'

    -- completion stuff
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use "hrsh7th/cmp-buffer"
    use "hrsh7th/cmp-path"
    use "hrsh7th/cmp-cmdline"
    use 'onsails/lspkind.nvim'

    -- snippets stuff
    use 'L3MON4D3/LuaSnip'
    
    -- syntax hl
    use {
      "nvim-treesitter/nvim-treesitter",
      run = ":TSUpdate"
    }
    use "p00f/nvim-ts-rainbow"

    -- asynchronous
    use "nvim-lua/plenary.nvim"

    -- git stuff
    use 'tpope/vim-fugitive'
    use 'airblade/vim-gitgutter'
    use 'lewis6991/gitsigns.nvim'

    -- helper
    use 'terrortylor/nvim-comment'
    use 'jiangmiao/auto-pairs'

    -- navigation
    use 'kyazdani42/nvim-tree.lua'

    -- cosmetics
    use 'mhinz/vim-startify'
    use 'norcalli/nvim-colorizer.lua'
    use 'chriskempson/base16-vim'
    use 'kyazdani42/nvim-web-devicons'

    require('nvim_comment').setup()
    require('colorizer').setup({"*"}, {names = false})
    require('gitsigns').setup()

end)

