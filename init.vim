
"===================================================================================
" Plugins
"===================================================================================
call plug#begin('~/.vim/plugged')

call plug#end()
"===================Sources====================

"INIT.LUA
luafile ~/AppData/Local/nvim/lua/init.lua
"==============================================
let g:kite_supported_languages = ['c', 'cpp', 'cc', 'java']


let g:moonflyItalics = v:false
colorscheme moonfly 
