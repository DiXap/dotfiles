" =====================================
" ============ Startify ===============

" Custom header
let g:startify_custom_header =  [
			\ '   			',
			\ '   			$$\   $$\                    $$\    $$\ $$\               ',
			\ '   			$$$\  $$ |                   $$ |   $$ |\__|              ',
			\ '   			$$$$\ $$ | $$$$$$\   $$$$$$\ $$ |   $$ |$$\ $$$$$$\$$$$\  ',
			\ '   			$$ $$\$$ |$$  __$$\ $$  __$$\\$$\  $$  |$$ |$$  _$$  _$$\ ',
			\ '   			$$ \$$$$ |$$$$$$$$ |$$ /  $$ |\$$\$$  / $$ |$$ / $$ / $$ |',
			\ '   			$$ |\$$$ |$$   ____|$$ |  $$ | \$$$  /  $$ |$$ | $$ | $$ |',
			\ '   			$$ | \$$ |\$$$$$$$\ \$$$$$$  |  \$  /   $$ |$$ | $$ | $$ |',
			\ '   			\__|  \__| \_______| \______/    \_/    \__|\__| \__| \__|',
			\ '   			',
			\]

let g:startify_session_dir =  '~/.config/nvim/sessions' " Dir to save your sessions

let g:startify_lists = [
          \ { 'type': 'files',     'header': ['   Files']                        },
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'sessions',  'header': ['   Sessions']                     },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
          \ ]


let g:startify_session_autoload       = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root     = 1
let g:startify_session_persistence    = 1
let g:webdevicons_enable_startify     = 1
" let g:startify_fortune_use_unicode   = 1 " Fortune cow

function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

" Custom bookmarks
	let g:startify_bookmarks = 	[
				\ {'t': '~/.config/kitty/kitty.conf'},
				\ {'d': '~/Documents'},
				\ {'i': '~/.config/i3'}
				\]

"let g:startify_enable_special =  0     " Enable/disable special startify  bookmarks

" =====================================
