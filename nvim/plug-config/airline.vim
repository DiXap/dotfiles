" ============================
" ========= Airlines =========
let g:airline#extensions#tabline#enabled=1           " Enable tabline
let g:airline#extensions#tabline#left_sep = ' '      " Tabs left separator
let g:airline#extensions#tabline#left_alt_sep = '|'  " Out of focus tabs left separator
let g:airline#extensions#tabline#right_sep = ' '     " Tabs right separator
let g:airline#extensions#tabline#right_alt_sep = '|' " Out of focus tabs right separator

let g:airline#extensions#tabline#show_tab_count = 2  " Show tabs number
let g:airline#extensions#tabline#show_tab_nr = 1

let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#tabline#buffer_nr_show = 1  " Show buffers number

"== Enable powerline font (if available) ==
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline#extensions#vimtex#enabled = 1

" Always show tabs
set showtabline=2

" ============================
