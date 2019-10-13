execute pathogen#infect()


syntax on
filetype plugin indent on

set encoding=utf-8
set foldmethod=indent
set foldlevel=99
set tabstop=4
set ai
set nu
set shiftwidth=4
set mouse=a
set clipboard=unnamedplus

" command remaps
map <C-n> :NERDTreeToggle<CR>

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

" automatic commands
autocmd BufWritePost config.h :! sudo make clean install %
autocmd BufWritePost .bashrc :! source .bashrc %

autocmd Filetype    python 
                \   setlocal ts=4 |
                \   setlocal expandtab 
