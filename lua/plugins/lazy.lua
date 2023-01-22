local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local ok, lazy = pcall(require, 'lazy')
if not ok then
	return
end

lazy.setup({
	-- TEMAS --
	{"bluz71/vim-nightfly-colors"},
	{"lunarvim/darkplus.nvim"},
	{"lunarvim/onedarker.nvim"},
	{"Mofiqul/vscode.nvim"},
	-- ("bluz71/vim-moonfly-colors")
	-- ("tanvirtin/monokai.nvim")
	{"folke/tokyonight.nvim"},
	{"Mofiqul/dracula.nvim"},
	{"ellisonleao/gruvbox.nvim"},
	{"EdenEast/nightfox.nvim"},
	{"navarasu/onedark.nvim"},
	{"shaunsingh/nord.nvim"},

	-- LSP --
	{"williamboman/mason.nvim"},
	{"williamboman/mason-lspconfig.nvim"},
	{"neovim/nvim-lspconfig"}, -- Configurations for Nvim LSP
	{"hrsh7th/cmp-nvim-lsp"},
	{"hrsh7th/cmp-buffer"},
	{ "hrsh7th/cmp-path" },
	{"hrsh7th/cmp-cmdline"},
	{"hrsh7th/nvim-cmp"},
	{
    "glepnir/lspsaga.nvim",
    event = 'BufRead',
    dependencies = { {'nvim-tree/nvim-web-devicons'} }
	},

	-- LSP-ICONS --
	{"onsails/lspkind.nvim"},

	{"jose-elias-alvarez/typescript.nvim"},

	-- NULL-LS --
	{{
		"jose-elias-alvarez/null-ls.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	}},
	{"jayp0521/mason-null-ls.nvim"},

	-- REST --
	{{
		"NTBBloodbath/rest.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	}},

	-- IMPATIENT --
	{"lewis6991/impatient.nvim"}, --Speed up loading Lua modules in Neovim to improve startup time

	-- GIT --
	{{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	}},

	-- DEV ICONS --
	{"nvim-tree/nvim-web-devicons"},

	-- SNIP --
	{"L3MON4D3/LuaSnip"},
	{"saadparwaiz1/cmp_luasnip"},
	{"rafamadriz/friendly-snippets"},

	-- ILLUMINATE --
	{"RRethy/vim-illuminate"},

	-- TELESCOPE --
	{{
		"nvim-telescope/telescope.nvim",
		version = "0.1.0",
		-- or                            , branch = '0.1.x',
		dependencies = { { "nvim-lua/plenary.nvim" } },
	}},
	{"nvim-lua/popup.nvim"},

	-- TOGGLE TERM --
	{{
		"akinsho/toggleterm.nvim",
		version = "v2.*",
		config = function()
			require("toggleterm").setup()
		end,
	}},

	-- STATUS LINE/TABS --
	{{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons", lazy = true },
	}},
	--  {'akinsho/bufferline.nvim', tag = "v2.*", requires = 'kyazdani42/nvim-web-devicons'}

	--TABLINE
	{{
		"kdheepak/tabline.nvim",
		dependencies = { { "nvim-lualine/lualine.nvim", lazy = true }, { "nvim-tree/nvim-web-devicons", lazy = true } },
	}},

	-- NVIM TREE --
	{{
		"kyazdani42/nvim-tree.lua",
		dependencies = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		version = "nightly", -- optional, updated every week. (see issue #1193)
	}},

	-- Close buffers without closing splits --
	{"famiu/bufdelete.nvim"},

	-- Sintaxis_Treesitter --
	{{
		"nvim-treesitter/nvim-treesitter",
		build = function()
			require("nvim-treesitter.install").update({ with_sync = true })
		end,
	}},
	{"p00f/nvim-ts-rainbow"},
	{"windwp/nvim-ts-autotag"},
	{"JoosepAlviste/nvim-ts-context-commentstring"},

	-- Desarrollo Web --
	{{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	}},
	{"norcalli/nvim-colorizer.lua"},
	{{
		"kylechui/nvim-surround",
		version = "*", --  for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to  defaults
			})
		end,
	}},
	{"numToStr/Comment.nvim"},
	{"lukas-reineke/indent-blankline.nvim"},

	-- WHICH KEY --
	--  {
	--   "folke/which-key.nvim",
	--   config = function()
	--     require("which-key").setup {
	--       -- your configuration comes here
	--       -- or leave it empty to  the default settings
	--       -- refer to the configuration section below
	--     }
	--   end
	-- }

	-- DAP --
	{"mfussenegger/nvim-dap"},
	{"rcarriga/nvim-dap-ui"},
	{"theHamsta/nvim-dap-virtual-text"},
	{"nvim-telescope/telescope-dap.nvim"},
	{"mxsdev/nvim-dap-vscode-js"},
	{{
		"microsoft/vscode-js-debug",
		lazy = true,
		build = "npm install --legacy-peer-deps && npm run compile",
	}},

	-- Project --
	{"ahmedkhalf/project.nvim"},

	-- Lazy Git --
	{"kdheepak/lazygit.nvim"},

	-- MATCH-UP --
	{"andymass/vim-matchup"},

	-- MINIMAP --
	{"wfxr/minimap.vim"},

	-- SILICON --
	{"segeljakt/vim-silicon"},

	-- DART DEV --
	{"dart-lang/dart-vim-plugin"},
	{"natebosch/vim-lsc"},
	{"natebosch/vim-lsc-dart"},
	{"thosakwe/vim-flutter"},

})

