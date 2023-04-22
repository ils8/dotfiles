call plug#begin()
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'sheerun/vim-polyglot'
Plug 'valloric/youcompleteme'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" weird
set t_Co=16

filetype plugin indent on
syntax on
packadd! dracula
colorscheme dracula

set number relativenumber title
set tabstop=2
set softtabstop=2
set shiftwidth=2
set noexpandtab
set scrolloff=8

let g:airline_theme='dracula'
let mapleader = ","
let $FZF_DEFAULT_COMMAND = "find . -maxdepth 10 -type f -not -path '*/\.git/*'"

" youcompleteme
nnoremap <leader>gt :YcmCompleter GoTo<CR>
nnoremap <leader>fi :YcmCompleter FixIt<CR>
nnoremap <leader>gd :YcmCompleter GetDoc<CR>
nnoremap <leader>gtp :YcmCompleter GetType<CR>
nnoremap <leader>gp :YcmCompleter GetParent<CR>
nnoremap <leader>gin :YcmCompleter GoToInclude<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>yd :YcmDiags<CR>

" FZF
nnoremap <C-f> :Files<CR>
