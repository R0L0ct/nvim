local packer = require("packer")
packer.startup(function(use)
	-- PLUGINS MANAGER --
	use("wbthomason/packer.nvim")

	-- LSP --
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("neovim/nvim-lspconfig") -- Configurations for Nvim LSP
	use("hrsh7th/cmp-nvim-lsp")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/nvim-cmp")

	-- NULL-LS --
	use({
		"jose-elias-alvarez/null-ls.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- REST --
	use({
		"NTBBloodbath/rest.nvim",
		requires = { "nvim-lua/plenary.nvim" },
	})

	-- IMPATIENT --
	use("lewis6991/impatient.nvim") --Speed up loading Lua modules in Neovim to improve startup time

	-- GIT --
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})

	-- DEV ICONS --
	use("kyazdani42/nvim-web-devicons")

	-- SNIP --
	use("L3MON4D3/LuaSnip")
	use("saadparwaiz1/cmp_luasnip")
	use("rafamadriz/friendly-snippets")

	-- ILLUMINATE --
	use("RRethy/vim-illuminate")

	-- TELESCOPE --
	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- TOGGLE TERM --
	use({
		"akinsho/toggleterm.nvim",
		tag = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	})

	-- STATUS LINE/TABS --
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	-- use {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	-- NVIM TREE --
	use({
		"kyazdani42/nvim-tree.lua",
		requires = {
			"kyazdani42/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})

	-- Close buffers without closing splits --
	use("famiu/bufdelete.nvim")

	-- Sintaxis_Treesitter --
	use({
		"nvim-treesitter/nvim-treesitter",
		run = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	})
	use("p00f/nvim-ts-rainbow")
	use("windwp/nvim-ts-autotag")

	-- Desarrollo Web --
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("norcalli/nvim-colorizer.lua")
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use("lukas-reineke/indent-blankline.nvim")

	-- WHICH KEY --
	-- use {
	--   "folke/which-key.nvim",
	--   config = function()
	--     require("which-key").setup {
	--       -- your configuration comes here
	--       -- or leave it empty to use the default settings
	--       -- refer to the configuration section below
	--     }
	--   end
	-- }

	-- TEMAS --
	use("bluz71/vim-moonfly-colors")
	use("Mofiqul/vscode.nvim")
	use("tanvirtin/monokai.nvim")
	use("folke/tokyonight.nvim")
	use("Mofiqul/dracula.nvim")
	use("ellisonleao/gruvbox.nvim")
	use("EdenEast/nightfox.nvim")
	use("navarasu/onedark.nvim")
	use("shaunsingh/nord.nvim")
end)
