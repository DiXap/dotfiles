" vim:fileencoding=utf-8:foldmethod=marker
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

" Import plugins
source $HOME/.config/nvim/plugs.vim

" ==================================================================
" Plug config                                                        {{{ 

	" Import plugin config
	source $HOME/.config/nvim/plug-config/sneak.vim
	source $HOME/.config/nvim/plug-config/coc.vim
	source $HOME/.config/nvim/plug-config/rainbow-parentheses.vim
	source $HOME/.config/nvim/plug-config/airline.vim
	source $HOME/.config/nvim/plug-config/signify.vim
	source $HOME/.config/nvim/plug-config/fzf.vim
	source $HOME/.config/nvim/plug-config/devicons.vim
	source $HOME/.config/nvim/plug-config/indentLine.vim
	source $HOME/.config/nvim/plug-config/ultisnips.vim
	source $HOME/.config/nvim/plug-config/start-screen.vim
	source $HOME/.config/nvim/plug-config/rnvimr.vim
	source $HOME/.config/nvim/plug-config/vim-tex.vim
	
	" Theme config
	" source $HOME/.config/nvim/theme-config/palenight.vim

" }}}
" ==================================================================

source $HOME/.config/nvim/plug-config/quick-scope.vim

" General config
" 	import at the end to avoid conflicts
source $HOME/.config/nvim/general-config/general.vim
