" ===========================
" === Rainbow Parentheses ===

let g:rainbow#pairs = [['(', ')'], ['[', ']'], ['{', '}']]
augroup rainbow_lisp
  autocmd!
  autocmd FileType lisp,clojure,python,java,javscript,scheme,haskell RainbowParentheses
augroup END

" ============================


