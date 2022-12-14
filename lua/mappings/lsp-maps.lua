vim.cmd [[ command! Format execute 'lua vim.lsp.buf.format()']]


local bufopts = { noremap=true, silent=true, buffer=bufnr }
-- vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, bufopts)
-- vim.keymap.set('n', 'gd', vim.lsp.buf.definition, bufopts)
-- vim.keymap.set('n', 'K', vim.lsp.buf.hover, bufopts)
-- vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, bufopts)
-- vim.keymap.set('n', 'gt', vim.lsp.buf.type_definition, bufopts)
-- vim.keymap.set('n', ']d', vim.diagnostic.goto_next, bufopts)
-- vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, bufopts)
-- vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, bufopts)
-- vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, bufopts)
-- vim.keymap.set('n', 'gr', vim.lsp.buf.references, bufopts)
-- vim.keymap.set('n', '<leader>df', vim.diagnostic.open_float, bufopts)
