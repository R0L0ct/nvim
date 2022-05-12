" config.vim
let mapleader = " "       " Set leader key to space to call which-key

set hidden
set nobackup
set nowritebackup
set cmdheight=2
set shortmess+=c
set nocompatible
set encoding=utf-8
set number                " Show numbers on the left
set signcolumn=no
set relativenumber
set scrolloff=5
set noshowmode
set showtabline=2         " Always show tabs
set hlsearch              " Highlight search results
set guicursor=a:block     " Force cursor to be a block at all times
set ignorecase            " Search ingnoring case
set smartcase             " Do not ignore case if the search patter has uppercase
set noerrorbells          " I hate bells
set belloff=esc
set tabstop=4             " Tab size of 4 spaces
set softtabstop=0         " do not insert spaces when pressing tab
set shiftwidth=0          "force indent spaces to equal to tabstop
set showcmd
set smarttab              "treat spaces as tabs in increments of shiftwidth
set noexpandtab             " Use apropiate number of spaces
set linebreak             " Respect WORDS when wrap-breaking lines (see wrap)
set wrap                  " Continue on the next line if insufficient columns (see linebreak)
set noswapfile            " Do not leve any backup files
set mouse=a               " Enable mouse on all modes
set clipboard=unnamed,unnamedplus     " Use the OS clipboard
set showmatch
set termguicolors
set splitright
set splitbelow
"set foldmethod=marker
set fillchars=fold:\ | set foldtext=CustomFold() "minimalistic folding
set listchars=tab:\|\ ,trail:· list "Alternate tab: »>

" Keep VisualMode after indent with > or <
vmap < <gv
vmap > >gv
"
" Move Visual blocks with J an K
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

"===================Sources====================

source ~/AppData/Local/nvim/plugins/coc-settings.vim
source ~/AppData/Local/nvim/plugins/automations.vim
"==============================================

"===================================================================================
" Plugins
"===================================================================================

call plug#begin('~/.vim/plugged')

"Plug 'tpope/vim-sensible'         " Sensible defaults
Plug 'dracula/vim', { 'as': 'dracula' } "theme
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } " File navigator
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Install fuzzy finder binary
Plug 'junegunn/fzf.vim'               " Enable fuzzy finder in Vim
Plug 'editorconfig/editorconfig-vim'  " Tab/Space trough projects
Plug 'neoclide/coc.nvim', {'branch': 'release'} " Intelisense

Plug 'Yggdroot/indentLine'

Plug 'sheerun/vim-polyglot'

Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'pangloss/vim-javascript'
"Plug 'leafgarland/typescript-vim'
"Plug 'peitalin/vim-jsx-typescript'
"Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
"Plug 'jparise/vim-graphql'
Plug 'mattn/emmet-vim'

Plug 'tpope/vim-commentary'
Plug 'dense-analysis/ale'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-surround'
Plug 'chrisbra/colorizer'

Plug 'alvan/vim-closetag'
"Plug 'jiangmiao/auto-pairs'

Plug 'ryanoasis/vim-devicons'
Plug 'terryma/vim-multiple-cursors'

Plug 'mattn/webapi-vim'

"Git integration
"Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'             "Para los comandos de git

Plug 'AndrewRadev/tagalong.vim'

"TablineThemes
"Plug 'kyazdani42/nvim-web-devicons'
"Plug 'romgrk/barbar.nvim'

call plug#end()
"==============================================================================
"key combos
"==============================================================================

" Double ESC to exit from terminal insert mode to terminal normal mode
tnoremap <Esc><Esc> <C-\><C-n>

"==================================================================================
"commands
"==================================================================================

command! Q q " Quit while still pressing Shift
command! Qa qa " Quit all while still pressing Shift
command! W w " Write while still pressing Shift
command! Wq wq " Write-quit while still pressing Shift
command! Wqa wqa " Write-quit all while still pressing Shift

"-----------COC-SETTINGS------------------------------------
"-----------------------------------------------------------\

let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-json',
    \ 'coc-html',
    \ 'coc-css',
    \ 'coc-phpls',
    \ 'coc-python',
	\ 'coc-diagnostic',
	\ 'coc-snippets',
	\ 'coc-pairs',
	\ 'coc-vimtex',
	\ 'coc-angular'
    \]

"----------------------------------------------------------------
"----------------------------------------------------------------

"INDENTLINE configuracion de tabs
let g:indentLine_enabled = 1
let g:indentLine_char = '|'
let g:indentLine_faster = 1
let g:indentLine_fileTypeExclude=["nerdtree"]
"===============================================================
"===============================================================

"▄▀█ █ █▀█ █░░ █ █▄░█ █▀▀
"█▀█ █ █▀▄ █▄▄ █ █░▀█ ██▄

" enable tabline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

"enable powerline fonts
let g:airline_powerline_fonts = 1

  if !exists('g:airline_symbols')
    let g:airline_symbols = {}
  endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" Switch to your current theme
let g:airline_theme='dracula'

"============================================
" TAB in general mode will move to text buffer
" TAB en modo normal se moverá al siguiente buffer
nnoremap <silent> <TAB> :bnext<CR>
" SHIFT-TAB will go back
" SHIFT-TAB va para atras
nnoremap <silent> <S-TAB> :bprevious<CR>
"close buffer
"cerrar buffer
nmap <leader>bd :bdelete<CR>

"Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"colorizer-config
let g:colorizer_auto_color = 0
let g:colorizer_auto_filetype='css,html'
let g:colorizer_skip_comments = 1

"Cerrar tags automaticamente
let g:closetag_filenames = '*.html,*.xhtml,*.phtml, *.jsx, *.js'

"emmet
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_mode='inv'  "enable all functions, which is equal to
let g:user_emmet_leader_key=','
let g:user_emmet_settings = {
\  'variables': {'lang': 'ja'},
\  'html': {
\    'default_attributes': {
\      'option': {'value': v:null},
\      'textarea': {'id': v:null, 'name': v:null, 'cols': 10, 'rows': 10},
\    },
\    'snippets': {
\      'html:5': "<!DOCTYPE html>\n"
\              ."<html lang=\"${lang}\">\n"
\              ."<head>\n"
\              ."\t<meta charset=\"${charset}\">\n"
\              ."\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n"
\              ."\t<title></title>\n"
\              ."</head>\n"
\              ."<body>\n\t${child}|\n</body>\n"
\              ."</html>",
\    },
\  },
\}


"tagalong
let g:tagalong_filetypes = ['html']

" Use Ctrl-k Ctrl-k to open a sidebar with the list of files
map <C-k><C-k> :NERDTreeToggle<cr>
" Use Ctrl-P to open the fuzzy file opener
nnoremap <C-p> :Files<cr>

"=============================================================================
"VIM-Autoclose-tags-config
"=============================================================================
" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.js,*.tsx'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx,*.xml,*.js,*.tsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml,jsx,js,tsx'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx,xml,js,tsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
"let g:closetag_close_shortcut = '<leader>>'
"=============================================================================
"=============================================================================




"Themes
colorscheme dracula " Activate the theme
