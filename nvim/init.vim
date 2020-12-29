" 
"   
"				██╗███╗░░██╗██╗████████╗░░░██╗░░░██╗██╗███╗░░░███╗
"				██║████╗░██║██║╚══██╔══╝░░░██║░░░██║██║████╗░████║
"				██║██╔██╗██║██║░░░██║░░░░░░╚██╗░██╔╝██║██╔████╔██║
"				██║██║╚████║██║░░░██║░░░░░░░╚████╔╝░██║██║╚██╔╝██║
"				██║██║░╚███║██║░░░██║░░░██╗░░╚██╔╝░░██║██║░╚═╝░██║
"				╚═╝╚═╝░░╚══╝╚═╝░░░╚═╝░░░╚═╝░░░╚═╝░░░╚═╝╚═╝░░░░░╚═╝
"   
"


call plug#begin('~/.config/nvim/plugged')
 
" Themes
"
Plug 'morhetz/gruvbox'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'rakr/vim-one' 																		

" IDE
"
Plug 'easymotion/vim-easymotion'                    " Easymotion
Plug 'scrooloose/nerdtree'                          " File tree
Plug 'christoomey/vim-tmux-navigator'               " File navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Conquer of Completion
Plug 'honza/vim-snippets'                           " Snippets
Plug 'junegunn/rainbow_parentheses.vim'             " Add color to bracket pairs
Plug 'ryanoasis/vim-devicons'                       " File icons
Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi cursors
Plug 'sheerun/vim-polyglot'                         " Languaje pack
Plug 'vim-airline/vim-airline'                      " Airlines
Plug 'vim-airline/vim-airline-themes'               " Airline themes


Plug 'wakatime/vim-wakatime'                        " Wakatime
Plug 'godlygeek/tabular'                            " Tabular

Plug 'iamcco/markdown-preview.nvim',                " Markdown Visualizer
	\ { 'do': { -> mkdp#util#install() },
	\ 'for': ['markdown', 'vim-plug']}

Plug 'tpope/vim-fugitive'                           " ==================
Plug 'tpope/vim-rhubarb'                            " Git add-ons
Plug 'junegunn/gv.vim'                              " 
Plug 'mhinz/vim-signify'                            " ==================


call plug#end()


let mapleader=" " 																	" Set leader key

colorscheme palenight																" Set colorscheme
let g:airline_theme='minimalist' 										" Set airline theme


" ============================
" =========== CoC ============

" CoC recommended settings
set hidden
set cmdheight=2
set updatetime=200
set shortmess+=c

if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" SHIFT + k to show documentatin in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

" ============================


" ============================
" ======= Palenight ==========

let g:lightline = {'colorscheme': 'palenight'}
let g:palenight_terminal_italics=1

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

" ===========================


" ===========================
" === Rainbow Parentheses ===

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,python,java,javscript,css,html,scheme RainbowParentheses
augroup END

" ============================


" ============================
" ========= Airlines =========
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ''

" enable powerline fonts
let g:airline_powerline_fonts=1
let g:airline_left_sep = ''
let g:airline_right_sep = ''

" Always show tabs
set showtabline=2

" ============================


" ============================
" ======= Easymotion =========

nmap <Leader>s <Plug>(easymotion-s2) 

" ============================


" ============================
" ======= NerdTree ===========

nmap <Leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

" ============================


" ============================
" ======= Wakatime ===========

let g:wakatime_PythonBinary = '/usr/bin/python' " Path to your python installation

" ============================


" ============================
" ===== Markdown Preview =====

let g:mkdp_auto_start = 0

let g:mkdp_auto_close = 1

let g:mkdp_refresh_slow = 0

let g:mkdp_command_for_global = 0

let g:mkdp_open_to_the_world = 0

let g:mkdp_open_ip = ''

let g:mkdp_browser = ''

let g:mkdp_echo_preview_url = 0

let g:mkdp_browserfunc = ''

let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {},
    \ 'content_editable': v:false,
    \ 'disable_filename': 0
    \ }

let g:mkdp_markdown_css = ''

let g:mkdp_highlight_css = ''

let g:mkdp_port = ''

let g:mkdp_page_title = '「${name}」'

let g:mkdp_filetypes = ['markdown']

" ============================





set number
set mouse=a
set numberwidth=1
set clipboard=unnamed
syntax enable
set showcmd
set ruler
set encoding=utf-8
set showmatch
set sw=2
set relativenumber
set laststatus=2
set noshowmode
set nocompatible



" ============================
" ===== Custom Shorcuts ======

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>

" ============================


