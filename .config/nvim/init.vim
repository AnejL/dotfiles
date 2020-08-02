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
set ignorecase
set smartcase

" nerdtreetoggle
	map <C-n> :NERDTreeToggle<CR>
	
" screen division remappings
	nnoremap <C-J> <C-W><C-J>
	nnoremap <C-K> <C-W><C-K>
	nnoremap <C-L> <C-W><C-L>
	nnoremap <C-H> <C-W><C-H>
	
" folds
	nnoremap <space> za

" tab fix
	vmap <Tab> >gv
	vmap <S-Tab> <gv

let vim_markdown_preview_toggle=2
 
" clear latex build files
	autocmd VimLeave *.tex :! texclear %

" compile latex document 
	autocmd BufWritePost *.tex :silent !compiler %

" compile suckless programs
	autocmd BufWritePost config.h :! sudo make clean install %

" source bashrc in this terminal instance
	autocmd BufWritePost .bashrc :! source ~/.bashrc %

	autocmd BufWritePost *.markdown :call Vim_Markdown_Preview()

	autocmd BufWritePost .Xresouces :! xrdb .Xresouces %

" python standard indentatinos etc
	autocmd Filetype    python 
					\   setlocal ts=4 |
					\   setlocal expandtab 
