" ===================================
" ==== Ranger Neovim integration ====
" https://github.com/kevinhwang91/rnvimr for additional config

let g:rnvimr_ex_enable = 1 	" Open ranger when vim opens a directory
let g:rnvimr_draw_border = 1
let g:rnvimr_pick_enable = 1

" Change the border's color
let g:rnvimr_border_attr = {'fg': 14, 'bg': -1}

let g:rnvimr_ranger_cmd = 'ranger --cmd="set column_ratios 1,1"'

let g:rnvimr_presets = [
            \ {'width': 0.800, 'height': 0.800}]

" ==================================
