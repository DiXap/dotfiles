set termguicolors

colorscheme gruvbox-material

let g:airline_theme='distinguished' " Airline theme by vim-airline 

" ===========================
" ========== General ========
" =========== Setup =========

let mapleader = ' ' 

" = CoC recommended settings =
set hidden
set cmdheight=2
set updatetime=100
set shortmess+=c


syntax enable
set number
set mouse=a
set numberwidth=1
set clipboard=unnamedplus
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


" ============================
" ===== Custom Shorcuts ======

nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <leader>h :let @/=""<cr>

" Tabline manager from airline 
nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

nmap <leader>ax :Sayonara<cr>
nmap <leader>as :Sayonara!<cr>

" Remapping ESC key
inoremap ñl <ESC>
cnoremap ñl <C-C>
nnoremap ñl <ESC>
vnoremap ñl <ESC>

" ============================
