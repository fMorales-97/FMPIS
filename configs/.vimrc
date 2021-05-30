" Configurar Leader
let mapleader = ","

" Configuraciones generales
set nocompatible
set encoding=utf-8
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set number relativenumber
set cursorline
set wrap linebreak nolist
set splitbelow splitright
set hlsearch
set nospell spelllang=es,en_us
filetype indent plugin on
syntax on

" Configura el espacio para accionar los comandos
nnoremap <Space> :

" Autocompletado de parentesis, comillas y llaves
inoremap ( ()<Left>
inoremap " ""<Left>
inoremap ' ''<Left>
inoremap [ []<Left>
inoremap { {}<Left>
inoremap {<Enter> {<Enter>}<Esc>O
inoremap < <><Left>

" Mapea la letra S para ejecutar sed en todo el documento
nnoremap S :%s//g<Left><Left>

" Configura las teclas para moverse entre Splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Configura las teclas para moverse entre Tabs
nnoremap th :tabprevious<Enter>
nnoremap tl :tabnext<Enter>

" Configurar explorador de archivos
nnoremap <Leader>f :Lex!<Enter>:vert res -26<Enter>

" Gruvbox color scheme
let g:gruvbox_guisp_fallback = "bg"
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark

" Configuracion para archivos Groff mom
autocmd BufRead,BufNewFile *.mom  set textwidth=68 colorcolumn=68 filetype=groff
