return require'packer'.startup(function()

--PLUGINS MANAGER
use 'wbthomason/packer.nvim'

--STATUS LINE
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}

--BUFFER LINE
use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}
-----------------------------------------
use 'mfussenegger/nvim-dap'  --debugger
use 'mfussenegger/nvim-lint' --diagnostic
use 'mhartington/formatter.nvim' 
-----------------------------------------
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
use 'tpope/vim-commentary'
use 'alvan/vim-closetag'

--TEMAS
use 'bluz71/vim-moonfly-colors'
use 'tomasr/molokai'
use 'morhetz/gruvbox'




end)

