
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

"Air-Line-Config
let g:airline#extensions#tabline#enabled = 1
" let g:airline_powerline_fonts = 1

"Gcc - compilador 
map <F5> :!g++ -g % -o %:r <CR>       

"Temas
let g:moonflyItalics = v:false
colorscheme moonfly 
