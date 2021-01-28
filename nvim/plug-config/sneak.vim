" ============= Sneak ==============
" ==================================

" ===== Sneak Highlight ======
autocmd ColorScheme * hi Sneak guifg=black guibg=#C3E88D ctermfg=black ctermbg=114
autocmd ColorScheme * hi SneakScope guifg=#292D3E guibg=#ff5370 ctermfg=235 ctermbg=204

" ===== General Config =======
let g:sneak#label = 1

" case insensitive sneak
let g:sneak#use_ic_scs = 1

" Immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
let g:sneak#s_next = 1

map gS <Plug>Sneak_,
map gs <Plug>Sneak_;
  
" Cool prompts
let g:sneak#prompt = '🔍'


" ==================================
