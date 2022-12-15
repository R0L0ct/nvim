require("nvim-treesitter.configs").setup({
	ensure_installed = { "c", "cpp","c_sharp", "css", "javascript","typescript","tsx", "html", "java", "lua", "sql", "rust", "http", "json" },
	sync_install = false,
	auto_install = true,
	ignore_install = { "" },
	highlight = {
		enable = true,
		disable = { "" },
		additional_vim_regex_highlighting = true,
	},
	rainbow = {
		enable = true,
		disable = { "html" }, -- list of languages you want to disable the plugin for
		extended_mode = false, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {
		-- 	"#FFD700",
		-- 	"#DA70D6",
		-- 	"#009bf6",
		-- }, -- table of hex strings
		-- termcolors = {}, -- table of colour name strings
	},
	autotag = {
		enable = true,
	},
	matchup = {
		enable = true, -- mandatory, false will disable the whole extension
		disable_virtual_text = true,
		-- disable = { "" }, -- optional, list of language that will be disabled
		-- [options]
	},
	context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
})
