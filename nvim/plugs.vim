call plug#begin('~/.config/nvim/plugged')

	" Themes
	"
	Plug 'morhetz/gruvbox'
	Plug 'sainnhe/gruvbox-material'
	
	" IDE
	"
	Plug 'justinmk/vim-sneak'                           " Sneak
	Plug 'unblevable/quick-scope'                       " Quickscope
	Plug 'christoomey/vim-tmux-navigator'               " File navigation
	Plug 'neoclide/coc.nvim', {'branch': 'release'}     " Conquer of Completion
	Plug 'godlygeek/tabular'                            " Tabular
	
	Plug 'SirVer/ultisnips'
	Plug 'honza/vim-snippets'                           " Snippets
	
	Plug 'mg979/vim-visual-multi', {'branch': 'master'} " Multi cursors
	Plug 'lervag/vimtex'                                " Latex plug
	Plug 'sheerun/vim-polyglot'                         " Languaje pack
	Plug 'vim-airline/vim-airline'                      " Airlines
	Plug 'vim-airline/vim-airline-themes'               " Airline themes
	
	if has('nvim') || has('patch-8.0.902')              " ==================
	  Plug 'mhinz/vim-signify'                          "
	else                                                " Vim-signify
	  Plug 'mhinz/vim-signify', { 'branch': 'legacy' }  "
	endif                                               " ==================
	
	Plug 'wakatime/vim-wakatime'                        " Wakatime
	
	Plug 'iamcco/markdown-preview.nvim',                " Markdown Visualizer
		\ { 'do': { -> mkdp#util#install() },
		\ 'for': ['markdown', 'vim-plug']}
	
	Plug 'tpope/vim-fugitive'                           " ==================
	Plug 'tpope/vim-rhubarb'                            " Git add-ons
	Plug 'junegunn/gv.vim'                              " ==================
	
	Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }     " Sayonara buffer handler
	
	Plug 'tpope/vim-surround'                           " Insert surrounding pairs
	Plug 'jiangmiao/auto-pairs'                         " Auto pairs
	
	
	Plug 'junegunn/fzf.vim'                             " ======= fzf ========
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } } " ====================
	
	Plug 'liuchengxu/vim-which-key'
	
	Plug 'ryanoasis/vim-devicons'                       " File icons
	Plug 'Yggdroot/indentLine'                          " Indentation marks
	Plug 'junegunn/rainbow_parentheses.vim'             " Add color to bracket pairs
	
	Plug 'wsdjeg/vim-todo'                              " Keep track of 'TODO's'
	Plug 'mhinz/vim-startify'                           " Startify
	Plug 'kevinhwang91/rnvimr'                          " Ranger
	Plug 'norcalli/nvim-colorizer.lua'                  " Color visualizer

	
call plug#end()

" Autoinstall plugins
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
