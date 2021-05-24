" Configuraciones generales
set tabstop=2
set shiftwidth=2
set expandtab
set number
set cursorline
set wrap linebreak nolist
syntax on
filetype indent plugin on

" Gruvbox color scheme
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
let g:gruvbox_termcolors=16

" Configuracion para archivos Groff mom
autocmd BufRead,BufNewFile *.mom  set textwidth=68 colorcolumn=68 filetype=groff
