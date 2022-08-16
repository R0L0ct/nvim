return require'packer'.startup(function()

--PLUGINS MANAGER
use 'wbthomason/packer.nvim'

--STATUS LINE/TABS
use 'vim-airline/vim-airline'
use 'vim-airline/vim-airline-themes'
use 'ryanoasis/vim-devicons'

-----------------------------------------
use 'mfussenegger/nvim-dap'  --debugger
use 'mfussenegger/nvim-lint' --diagnostic
use 'mhartington/formatter.nvim' 
-----------------------------------------

--NERDtree
use 'preservim/nerdtree'

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

