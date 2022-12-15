-- Setup nvim-cmp
require'cmp'.setup {
  sources = {
    { name = 'nvim_lsp' }
  }
}

--Native LSP Setup
local capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities())


local keymap = vim.keymap
local on_attach = function(client)

	if client.name == "tsserver" then
		keymap.set("n", "<leader>rf", ":TypescriptRenameFile<CR>")
	end
end

local typescript_setup, typescript = pcall(require, "typescript")
if not typescript_setup then
	return
end

 require'lspconfig'.html.setup {
   capabilities = capabilities,
		 on_attach = on_attach
 }

 require'lspconfig'.cssls.setup {
   capabilities = capabilities,
		 on_attach = on_attach
}

require'lspconfig'.cssmodules_ls.setup {
   capabilities = capabilities,
		 on_attach = on_attach
}

 -- require'lspconfig'.tsserver.setup {
 --   capabilities = capabilities,
 -- }
 typescript.setup({
	 server = {
		 capabilities = capabilities,
		 on_attach = on_attach
	 }
 })

 require'lspconfig'.sumneko_lua.setup {
   capabilities = capabilities,
		 on_attach = on_attach,
		 settings = {
			 Lua = {
				 -- make the language server recognize "vim" global
				 diagnostics = {
					 globals = { "vim" },
				 },
				 workspace = {
					 -- make language server aware of runtime files
					 library = {
						 [vim.fn.expand("$VIMRUNTIME/lua")] = true,
						 [vim.fn.stdpath("config") .. "/lua"] = true,
					 },
				 },
			 },
		 },
 }

 require'lspconfig'.vimls.setup {
   capabilities = capabilities,
		 on_attach = on_attach
 }

 require'lspconfig'.clangd.setup {
   capabilities = capabilities,
		 on_attach = on_attach
 }

 require'lspconfig'.jdtls.setup {
   capabilities = capabilities,
		 on_attach = on_attach
 }

 require'lspconfig'.sqls.setup{
   capabilities = capabilities,
		 on_attach = on_attach
 }

 require'lspconfig'.angularls.setup{
   capabilities = capabilities,
		 on_attach = on_attach
 }

 -- Setup nvim-cmp.
local cmp = require'cmp'

cmp.setup({
  snippet = {
    expand = function(args)
      require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    end,
    },
    window = {
      -- completion = cmp.config.window.bordered(),
      -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'vsnip' }, -- For vsnip users.
      -- { name = 'luasnip' }, -- For luasnip users.
      -- { name = 'ultisnips' }, -- For ultisnips users.
      -- { name = 'snippy' }, -- For snippy users.
    }, {
      { name = 'buffer' },
    })
  })

  -- Set configuration for specific filetype.
  cmp.setup.filetype('gitcommit', {
    sources = cmp.config.sources({
      { name = 'cmp_git' }, -- You can specify the `cmp_git` source if you were installed it.
    }, {
      { name = 'buffer' },
    })
  })

  -- Use buffer source for `/` (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline('/', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = 'buffer' }
    }
  })

  -- Use cmdline & path source for ':' (if you enabled `native_menu`, this won't work anymore).
  cmp.setup.cmdline(':', {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = 'path' }
    }, {
      { name = 'cmdline' }
    })
  })

-- LSP ICONS --

	require('lspkind').init({
    -- DEPRECATED (use mode instead): enables text annotations
    --
    -- default: true
    -- with_text = true,

    -- defines how annotations are shown
    -- default: symbol
    -- options: 'text', 'text_symbol', 'symbol_text', 'symbol'
    mode = 'symbol_text',

    -- default symbol map
    -- can be either 'default' (requires nerd-fonts font) or
    -- 'codicons' for codicon preset (requires vscode-codicons font)
    --
    -- default: 'default'
    preset = 'codicons',

    -- override preset symbols
    --
    -- default: {}
    symbol_map = {
      Text = "",
      Method = "",
      Function = "",
      Constructor = "",
      Field = "ﰠ",
      Variable = "",
      Class = "ﴯ",
      Interface = "",
      Module = "",
      Property = "ﰠ",
      Unit = "塞",
      Value = "",
      Enum = "",
      Keyword = "",
      Snippet = "",
      Color = "",
      File = "",
      Reference = "",
      Folder = "",
      EnumMember = "",
      Constant = "",
      Struct = "פּ",
      Event = "",
      Operator = "",
      TypeParameter = ""
    },
})

local lspkind = require('lspkind')
cmp.setup {
  formatting = {
    format = lspkind.cmp_format({
      mode = 'symbol_text', -- show only symbol annotations
      maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
      ellipsis_char = '...', -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)

      -- The function below will be called before any actual modifications from lspkind
      -- so that you can provide more controls on popup customization. (See [#30](https://github.com/onsails/lspkind-nvim/pull/30))
      before = function (entry, vim_item)
        return vim_item
      end
    })
  }
}

