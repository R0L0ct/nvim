return require'packer'.startup(function()

--PLUGINS MANAGER
use 'wbthomason/packer.nvim'

--STATUS LINE/TABS
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
-- use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- NEO TREE -- 
use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = { 
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

--Close buffers without closing splits
use 'qpkorr/vim-bufkill'

--Sintaxis_Treesitter
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

