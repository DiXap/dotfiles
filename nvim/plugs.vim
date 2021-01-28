call plug#begin('~/.config/nvim/plugged')

	" Themes
	"
	Plug 'morhetz/gruvbox'
	Plug 'drewtempelmeyer/palenight.vim'
	Plug 'ajmwagar/vim-deus'
	Plug 'ghifarit53/tokyonight-vim'
	
	" IDE
	"
	Plug 'justinmk/vim-sneak' 																" Sneak
	Plug 'unblevable/quick-scope' 														" Quickscope
	Plug 'christoomey/vim-tmux-navigator'											" File navigation
	Plug 'neoclide/coc.nvim', {'branch': 'release'}						" Conquer of Completion
	
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets' 																" Snippets

	Plug 'jiangmiao/auto-pairs' 															" Auto pairs
	Plug 'lervag/vimtex'                                                                    " Latex plug
	Plug 'junegunn/rainbow_parentheses.vim' 									" Add color to bracket pairs
	Plug 'mg979/vim-visual-multi', {'branch': 'master'} 			" Multi cursors
	Plug 'sheerun/vim-polyglot' 															" Languaje pack
	Plug 'vim-airline/vim-airline' 														" Airlines 
	Plug 'vim-airline/vim-airline-themes' 										" Airline themes 
	
	if has('nvim') || has('patch-8.0.902') 										" ==================	
	  Plug 'mhinz/vim-signify' 																" 
	else 																											"  Vim-signify 
	  Plug 'mhinz/vim-signify', { 'branch': 'legacy' } 				" 
	endif  			                                            	" ==================
	
	Plug 'wakatime/vim-wakatime' 															" Wakatime
	Plug 'godlygeek/tabular'     															" Tabular
	
	Plug 'iamcco/markdown-preview.nvim',                      " Markdown Visualizer
				\ { 'do': { -> mkdp#util#install() },
				\ 'for': ['markdown', 'vim-plug']} 
	
	Plug 'tpope/vim-fugitive'                                 " ==================
	Plug 'tpope/vim-rhubarb'                                  " Git add-ons
	Plug 'junegunn/gv.vim'                                    " ==================
	
	Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' } 					" Sayonara buffer handler
	
	Plug 'tpope/vim-surround' 																" Insert surrounding pairs
	
	Plug 'kassio/neoterm' 																		" Neoterm integration
	
	
	Plug 'junegunn/fzf.vim'			                              " ======= fzf ========
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }			  " ====================
	
	Plug 'liuchengxu/vim-which-key'
	
	Plug 'ryanoasis/vim-devicons' 														" File icons
	Plug 'Yggdroot/indentLine' " Indentation marks
	
	Plug 'wsdjeg/vim-todo'
	Plug 'mhinz/vim-startify' 		" Startify
	Plug 'kevinhwang91/rnvimr' 		" Ranger 
	Plug 'norcalli/nvim-colorizer.lua'  	" Color visualizer

	
call plug#end()

" Autoinstall plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
