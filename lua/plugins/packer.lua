return require'packer'.startup(function()

use 'wbthomason/packer.nvim'

--LSP
-- use 'neovim/nvim-lspconfig'
-- use 'hrsh7th/nvim-cmp'
-- use 'hrsh7th/cmp-nvim-lsp'
-- use 'hrsh7th/cmp-buffer'
-- use 'hrsh7th/cmp-path'
-- use 'hrsh7th/cmp-cmdline'
-- use 'L3MON4D3/LuaSnip'
-- use 'saadparwaiz1/cmp_luasnip'
    
--LSP Mason
-- use {
--     "williamboman/mason.nvim",
--     "williamboman/mason-lspconfig.nvim",    
-- }

use 'mfussenegger/nvim-dap'  --debugger
use 'mfussenegger/nvim-lint' --diagnostic
use 'mhartington/formatter.nvim' 

--Telescope
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

--Sintaxis
use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }

use 'p00f/nvim-ts-rainbow'

-- Desarrollo Web
use 'norcalli/nvim-colorizer.lua'
use 'tpope/vim-surround'
-- use 'jiangmiao/auto-pairs'
use 'tpope/vim-commentary'
use 'alvan/vim-closetag'

--TEMAS
use 'bluz71/vim-moonfly-colors'
use 'tomasr/molokai'
use 'morhetz/gruvbox'




end)

