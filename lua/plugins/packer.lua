return require'packer'.startup(function()

-- PLUGINS MANAGER --
use 'wbthomason/packer.nvim'

-- LSP --
use "williamboman/mason.nvim"
use "williamboman/mason-lspconfig.nvim"
use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
use 'hrsh7th/cmp-nvim-lsp'
use 'hrsh7th/cmp-buffer'
use 'hrsh7th/cmp-path'
use 'hrsh7th/cmp-cmdline'
use 'hrsh7th/nvim-cmp'
use 'L3MON4D3/LuaSnip'
use 'saadparwaiz1/cmp_luasnip'

-- TELESCOPE --
use {
  'nvim-telescope/telescope.nvim', tag = '0.1.0',
-- or                            , branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}

-- TOGGLE TERM --
use {"akinsho/toggleterm.nvim", tag = 'v2.*', config = function()
  require("toggleterm").setup()
end}

-- STATUS LINE/TABS --
use {
  'nvim-lualine/lualine.nvim',
  requires = { 'kyazdani42/nvim-web-devicons', opt = true }
}
-- use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

-- NVIM TREE --
use {
  'kyazdani42/nvim-tree.lua',
  requires = {
    'kyazdani42/nvim-web-devicons', -- optional, for file icons
  },
  tag = 'nightly' -- optional, updated every week. (see issue #1193)
}

-- Close buffers without closing splits --
use 'qpkorr/vim-bufkill'

-- Sintaxis_Treesitter --
 use {
        'nvim-treesitter/nvim-treesitter',
        run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
    }
use 'p00f/nvim-ts-rainbow'

-- Desarrollo Web --
use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
use 'norcalli/nvim-colorizer.lua'
use 'tpope/vim-surround'
use 'tpope/vim-commentary'
use 'alvan/vim-closetag'

-- TEMAS --
use 'bluz71/vim-moonfly-colors'
use 'tomasr/molokai'
use 'morhetz/gruvbox'

end)

