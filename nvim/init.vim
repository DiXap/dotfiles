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
Plug 'morhetz/gruvbox'               " Gruvbox theme
Plug 'drewtempelmeyer/palenight.vim' " Palenight theme
Plug 'rakr/vim-one'                  " One theme

" IDE
"
Plug 'justinmk/vim-sneak' 													" Sneak
Plug 'scrooloose/nerdtree'                                   " File tree
Plug 'christoomey/vim-tmux-navigator'                        " File navigation
Plug 'neoclide/coc.nvim', {'branch': 'release'}              " Conquer of Completion
Plug 'honza/vim-snippets'                                    " Snippets
Plug 'junegunn/rainbow_parentheses.vim'                      " Add color to bracket pairs
Plug 'ryanoasis/vim-devicons'                                " File icons
Plug 'mg979/vim-visual-multi', {'branch': 'master'}          " Multi cursors
Plug 'sheerun/vim-polyglot'                                  " Languaje pack
Plug 'vim-airline/vim-airline'                               " Airlines
Plug 'vim-airline/vim-airline-themes'                        " Airline themes

Plug 'tpope/vim-fugitive'                                    " ==================
Plug 'tpope/vim-rhubarb'                                     " Git add-ons
Plug 'junegunn/gv.vim'                                       "
Plug 'mhinz/vim-signify'                                     " ==================

Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }              " Sayonara buffer handler
Plug 'tpope/vim-surround'                                    " Insert surrounding pairs
Plug 'kassio/neoterm'                                        " Neoterm integration
Plug 'unblevable/quick-scope'                                " QuickScope
Plug 'godlygeek/tabular'                                     " Tabular

Plug 'iamcco/markdown-preview.nvim',                         " Markdown Visualizer
	\ { 'do': { -> mkdp#util#install() },
	\ 'for': ['markdown', 'vim-plug']}


call plug#end()


" ===== Sneak Highlight =====
" Optional for specific highlight
" autocmd ColorScheme * hi Sneak guifg=black guibg=#C3E88D ctermfg=black ctermbg=114
" autocmd ColorScheme * hi SneakScope guifg=#292D3E guibg=#ff5370 ctermfg=235 ctermbg=204
" ===========================

" ==== QuickScope Highlight =====
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150
" ===============================


let mapleader=" "                " Set leader key
colorscheme palenight            " Set colorscheme
let g:airline_theme='minimalist' " Set airline theme


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

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  imap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif


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

autocmd CursorHold * silent call CocActionAsync('highlight')

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')


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
  autocmd FileType python,java,javscript,css,html,scheme RainbowParentheses
augroup END

" ============================


" ============================
" ========= Airlines =========
let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#right_sep = ' '
let g:airline#extensions#tabline#right_alt_sep = '|'

let g:airline#extensions#tabline#show_tab_count = 2
let g:airline#extensions#tabline#show_tab_nr = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1

" enable powerline fonts
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif


let g:airline#extensions#vimtex#enabled = 1


" Always show tabs
set showtabline=2

" ============================


" ============================
" ======= NerdTree ===========

nmap <leader>nt :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

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


" ============================
" ========= Signify ==========
" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" ============================


" ============================
" ========== Sneak ===========
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

" remmaping back and foward movement keys
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Cool prompts

"let g:sneak#prompt = '🔍'  " Change for an unicode icon that your terminl
 													 " supports

" ============================



" ===========================
" ========== General ========
" =========== Setup =========

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

" ===========================


" ============================
" ===== Custom Shorcuts ======

nmap <leader>w :w<cr>
nmap <leader>q :q<cr>

" ============================


