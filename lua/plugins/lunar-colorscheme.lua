local colorscheme = "darkplus"

--onedark
vim.g.onedarker_italic_keywords = false

vim.g.onedarker_italic_functions = false

vim.g.onedarker_italic_comments = false

vim.g.onedarker_italic_loops = false

vim.g.onedarker_italic_conditionals = false

--darkplus
vim.g.darkplus_italic_keywords = false

vim.g.darkplus_italic_functions = false

vim.g.darkplus_italic_comments = false

vim.g.darkplus_italic_loops = false

vim.g.darkplus_italic_conditionals = false

local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  -- vim.notify("colorscheme " .. colorscheme .. " not found!")
  return
end

local c = require('darkplus.palette')
local hl = vim.api.nvim_set_hl

hl(0, "TSComment", { fg = c.green, bg = 'NONE', italic=false, })
hl(0, "Italic", { fg = 'NONE', bg = 'NONE', italic=false, })
hl(0, "TSTagAttribute", { fg = c.light_blue, bg = 'NONE', italic=false, })
hl(0, "markdownBoldItalic", { fg = c.yellow, bg = 'NONE', bold=true, italic=false, })
hl(0, "LspCodeLens", { fg = c.context, bg = 'NONE', italic=false, })
hl(0, "LspCodeLensSeparator", { fg = c.context, bg = 'NONE', italic=false, })
hl(0, "TelescopeMatching", { fg = c.info, bg = 'NONE', bold=true, italic=false, })
hl(0, "NvimTreeOpenedFolderName", { fg = c.folder_blue, bg = 'NONE', bold=true, italic=false, })
hl(0, "NvimTreeEmptyFolderName", { fg = c.gray, bg = 'NONE', italic=false, })
hl(0, "NvimTreeGitIgnored", { fg = c.gray, bg = 'NONE', italic=false, })
hl(0, "LirEmptyDirText", { fg = c.gray, bg = 'NONE', italic=false, })
