set number
set clipboard=unnamedplus
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
syntax on
colorscheme desert

nnoremap <C-c> :!g++ -o  a.out % -std=c++11<Enter>
nnoremap <C-x> :!./a.out

:autocmd BufNewFile *.cpp 0r ~/.vim/templates/snippet.cpp

