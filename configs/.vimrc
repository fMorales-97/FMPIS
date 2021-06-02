" Configurar Leader
let mapleader = ","

" Configuraciones generales
set nocompatible
set encoding=utf-8
set confirm
set tabstop=2
set shiftwidth=2
set expandtab
set number relativenumber
set cursorline
set wildmenu
set wrap linebreak nolist
set splitbelow splitright
set hlsearch is
set nospell spelllang=es,en_us
filetype indent plugin on
syntax on
autocmd vimenter * set autoindent

" Configura el espacio para accionar los comandos
nnoremap <Space> :

" Autocompletado de parentesis, comillas y llaves
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<CR> {<CR>}<Esc>O
inoremap < <><Left>

" Mapea la letra S para ejecutar sed en todo el documento
nnoremap S :%s//g<Left><Left>

" Configura las teclas para moverse entre Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <Right> :vertical resize -2<CR>
nnoremap <Left> :vertical resize +2<CR>

" Configura las teclas para moverse entre Tabs
nnoremap th :tabprevious<CR>
nnoremap tl :tabnext<CR>

" Configurar explorador de archivos
nnoremap <Leader>f :Lex!<CR>

" Remapea la tecla leader de emmet
let g:user_emmet_leader_key='<C-z>'

" Configuracion de Airline
let g:airline_extensions = ['tabline']
let g:airline#extensions#tabline#show_buffers = 0
set ttimeoutlen=50

" Configuracion para archivos Groff mom
autocmd BufRead,BufNewFile *.mom  set textwidth=68 colorcolumn=68 filetype=groff

" Gruvbox color scheme
let g:gruvbox_guisp_fallback = "bg"
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark
