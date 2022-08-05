
"===================================================================================
" Plugins
"===================================================================================
call plug#begin('~/.vim/plugged')

call plug#end()
"===================Sources====================

"INIT.LUA
luafile ~/AppData/Local/nvim/lua/init.lua
"==============================================

"Kite Config
let g:kite_supported_languages = ['c', 'cpp', 'cc', 'java']



"Temas
let g:moonflyItalics = v:false
colorscheme moonfly 
