syntax on
set sw=2
set expandtab
set smartindent
set number
set numberwidth=3
set nowrap
set nobackup
set incsearch
set noswapfile
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set cursorline
set termguicolors
set splitright
set splitbelow

"Crea una linea a la derecha que indica que estas escribiendo demasiado en esa
set colorcolumn=120
highlight ColoColumn ctermbg=0 guibg=lightgray

call plug#begin(expand('~/.config/nvim/plugged'))

"Plugins

"Themes
Plug 'tomasiser/vim-code-dark'
Plug 'morhetz/gruvbox'

"Visual
Plug 'yggdroot/indentline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'ryanoasis/vim-devicons'
Plug 'leafgarland/typescript-vim'

"Git Integration
Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

"Functionality
Plug 'junegunn/fzf', {'do' : { -> fzf#install()} }
Plug 'junegunn/fzf.vim'
Plug 'cloudhead/neovim-fuzzy'
Plug 'scrooloose/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'KabbAmine/vCoolor.vim'
Plug 'easymotion/vim-easymotion'
Plug 'ddollar/nerdcommenter'

"Code completion
Plug 'ddollar/nerdcommenter'
Plug 'honza/vim-snippets'
Plug 'sirver/ultisnips'
Plug 'jiangmiao/auto-pairs'
Plug 'neoclide/coc.nvim', {'branch' : 'release'}

"Languajes
Plug 'dart-lang/dart-vim-plugin'
Plug 'thosakwe/vim-flutter'
Plug 'nelsyeung/twig.vim'

"Formatting
Plug 'Chiel92/vim-autoformat'

call plug#end()

let mapleader = " "


"Cuando me pinchen los iconos, hay que meter esto pa corregir un bug
"Vim devicons
if exists("g:loaded_webdevicons")
  call webdevicons#refresh()
endif

"Mapeo de la barra de estado de airline
let g:airline#extensions#tabline#enabled = 1 "Mostrar buffers abiertos como pestannas
let g:airline#extensions#tabline#fnamemod = ':t' "Mostrar solo el nombre del archivo
let g:airline_powerline_fonts = 1 "Modifica los separadores para que tengan forma de triangulo
let g:airline_theme='tomorrow'

"IndentLine
let g:indentLine_char = '|'

"Theme Config
"===================

"VsCode
"--------------------
"colorscheme codedark

"gruvbox
"----------------
set background=dark
let g:gruvbox_contrast_dark="hard"
colorscheme gruvbox

"Deshabilitar las flechas del teclado
noremap <up> <nop>
noremap <down> <nop>
noremap <right> <nop>
noremap <left> <nop>

"Guardar Space + w
noremap <leader>w :w<CR>

"Con las flechas del teclado se resizan las ventanas en split
noremap <silent> <right> :vertical resize -5 <CR>
noremap <silent> <left> :vertical resize +5  <CR>
noremap <silent> <up> :resize +5 <CR>
noremap <silent> <down> :resize -5<CR>

"Moverse al buffer siguiente
nnoremap <leader>k :bnext <CR>

"Moverse al buffer anterior
nnoremap <leader>j :bprevious <CR>

"Cerrar el buffer actual
nnoremap <leader>q :bdelete <CR>

"Crear una nueva ventana
nnoremap <leader>t :tabe <CR>

"Hacer un split vertical
nnoremap <leader>vv :vsp <CR>

"Hacer un split horizontap
nnoremap <leader>hh :sp <CR>

"Terminal Stuff
"=================

"Abrir un terminal debajo pequenno
vnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>
nnoremap <c-t> :split<CR>:ter<CR>:resize 10<CR>

"Abrir un terminal a la derecha grande
vnoremap <c-y> :vsplit<CR>:ter<CR>
nnoremap <c-y> :vsplit<CR>:ter<CR>

"Salir al modo terminal con Esc
tnoremap <Esc> <C-\><C-n><C-w><C-w>



"NerdTree
nnoremap <leader>1 :NERDTreeToggle <CR>
let g:NERDTreeDirArrowExpandable = '->'
let g:NERDTreeDirArrowCollapsible = '*'

"Coc
so ~/.config/nvim/coc.vim

"Fugitive
"Abrir la ventana de git
nnoremap <leader>g :Git<CR>

"LANGUAJES SUPPORT
"======================

" Enable Flutter menu
"call FlutterMenu()
"nnoremap <leader>fa :FlutterRun<cr>
"nnoremap <leader>fq :FlutterQuit<cr>
"nnoremap <leader>fr :FlutterHotReload<cr>
"nnoremap <leader>fR :FlutterHotRestart<cr>
"nnoremap <leader>fD :FlutterVisualDebug<cr>

"Fuzzy
nnoremap <C-p> :Files<CR>
nnoremap <C-f> :BLines<CR>
nnoremap <leader>f :Ag<CR>

"Autoformat
noremap <F3> :Autoformat<CR>

""" Formatear el codigo siempre que se guarde el fichero
au BufWrite * :Autoformat





