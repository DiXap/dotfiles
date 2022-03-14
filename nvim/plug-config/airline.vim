" ============================
" ========= Airlines =========
let g:airline#extensions#tabline#enabled = 1            " Enable tabline

let g:airline#extensions#tabline#fnamemod       = ':t'  " Disable file paths in the tab
let g:airline#extensions#tabline#show_tab_count = 0     " Show tabs number: 2. Dont show them: 0
let g:airline#extensions#tabline#show_tab_nr    = 0

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show  = 0    " Dont show buffers number

"== Enable powerline font (if available) ==
let g:airline_powerline_fonts = 1

let g:airline#extensions#vimtex#enabled = 1

" Always show tabs
set showtabline=2

" ============================
