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


let mapleader=" " 																				" Set leader key

colorscheme palenight																			" Set colorscheme
let g:airline_theme='minimalist' 													" Set airline theme

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

" Switch to your current theme
" let g:airline_theme = 'onedark'

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

let g:wakatime_PythonBinary = '/usr/bin/python'

" ============================


" ============================
" ===== Markdown Preview =====

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 0

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = ''

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
" content_editable: if enable content editable for preview page, default: v:false
" disable_filename: if disable filename header for preview page, default: 0
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

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

" recognized filetypes
" these filetypes will have MarkdownPreview... commands
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


