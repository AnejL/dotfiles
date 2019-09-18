execute pathogen#infect()
syntax on
filetype plugin indent on
" autocmd vimenter * NERDTree

map <C-n> :NERDTreeToggle<CR>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>


set tabstop=4
set ai
set nu
set shiftwidth=4
set mouse=a
set clipboard=unnamedplus

autocmd BufWritePost config.h :! sudo make clean install %
autocmd BufWritePost .bashrc :! source .bashrc %
