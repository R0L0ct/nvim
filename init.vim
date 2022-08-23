
"===================================================================================
" Plugins
"===================================================================================
call plug#begin('~/.vim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
call plug#end()
"===================Sources====================

"INIT.LUA
luafile ~/AppData/Local/nvim/lua/init.lua
"==============================================
source ~/AppData/Local/nvim/coc.vim

let g:coc_global_extensions = [
    \ 'coc-json',
    \ 'coc-phpls',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-snippets',
    \ 'coc-pairs',
	\ 'coc-vimtex',
	\ 'coc-angular',
    \ 'coc-lua',
    \ 'coc-html',
    \ 'coc-sql',
    \ 'coc-css',
    \ 'coc-tsserver',
    \ 'coc-clangd',
    \ 'coc-java',
    \ 'coc-prettier',
    \ 'coc-emmet',
    \ 'coc-lists',
    \ 'coc-vimlsp']

"Kite Config
" let g:kite_supported_languages = ['c', 'cpp', 'cc', 'java']
let g:python_host_prog = '/usr/bin/python'
let g:python3_host_prog = 'C:/Users/Administrator/AppData/Local/Programs/Python/Python310/python.exe'
let g:ruby_host_prog = 'E:/Ruby31-x64/bin/ruby.exe'
let g:ruby_host_prog = 'E:/Ruby31-x64/bin/neovim-ruby-host'

"Gcc - compilador 
map <F5> :!g++ -g % -o %:r <CR>       

"NERDTree
let NERDTreeShowHidden=1

"EJS_FILETYPE
if has("autocmd")
    au BufRead,BufNewFile *.ejs setfiletype html
endif

"Temas
let g:moonflyItalics = v:false
colorscheme gruvbox 
