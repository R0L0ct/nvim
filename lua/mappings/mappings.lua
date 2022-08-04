local opts = {noremap = true, silent = true}
local keymap = vim.api.nvim_set_keymap

vim.g.mapleader = ' '

-- Normal --
-- Buffer navigation
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

--Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

--Lexplore
keymap("n", "<leader>e", ":Lex 30<cr>", opts)


