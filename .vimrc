set relativenumber
set number
set clipboard=unnamedplus
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
set textwidth=80
set encoding=utf-8
syntax on
colorscheme desert

" Hey noob nafi, now you know how to map in VIm :D
" nnoremap (mapping for normal mode)
" inoremap(insert mode)
" vnoremap(visual mode)
" cnoremap(command mode)

map <Enter> o<ESC>
map <S-Enter> O<ESC>
inoremap jk <ESC>
inoremap { {<CR>}<Esc>O<TAB>
nnoremap <C-c> :!g++ -o  a.out % -std=c++11<Enter>
nnoremap <C-x> :!./a.out

" auto open the template for CPP
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/snippet.cpp

