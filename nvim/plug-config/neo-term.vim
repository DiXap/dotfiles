" ============================
" ========= Neoterm ==========

filetype off

let &runtimepath.=',~/.vim/bundle/neoterm'
let g:neoterm_use_relative_path = 1
let g:neoterm_autoscroll = 1

let g:neoterm_callbacks = {}
function! g:neoterm_callbacks.before_new()
  if winwidth('.') > 100
    let g:neoterm_default_mod = 'botright vertical'
  else
    let g:neoterm_default_mod = 'botright'
  end
endfunction

nnoremap <silent> <space>tn :Tnew<cr>
nnoremap <silent> <space>vt :<c-u>exec printf('botright vertical %s Ttoggle', v:count)<cr>
nnoremap <silent> <space>ht :<c-u>exec printf('botright %s Ttoggle', v:count)<cr>
nnoremap <silent> <space>te :<c-u>exec printf('%sT exit', v:count)<cr>
nnoremap <silent> <space>tl :<c-u>exec printf('%sTclose!', v:count)<cr>
nnoremap <space>tal :TcloseAll!<cr>
nnoremap <silent> <space>tk :<c-u>exec printf('%sTkill', v:count)<cr>

" Git
nnoremap <silent> <space>tg :<c-u>exec printf('%sT git push', v:count)<cr>


filetype plugin on

" ============================


