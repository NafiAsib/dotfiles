"" set ruler
" set relative line number on
set relativenumber
" set line number on. to turn of set nonumber
set number
" turns on system clipboard
set clipboard=unnamedplus
" The expandtab property will ensure that when you hit tab it will actually use spaces
set expandtab
" set tab to 4 spaces
set tabstop=4
" tabstop is about how wide a Tab is defined, while softtabstop is about how far cursor moves while typing Tab
set softtabstop=4
" set indent (>, <) 4 spaces
set shiftwidth=4
" indent the next new line to match the indent of the previous one
set autoindent
" automatic word wrapping 
set textwidth=80
set encoding=utf-8
syntax on

" jellybeans is pretty kora, got the name from tahsin vai. Faced some green issues
colorscheme jellybeans
" mkdir -p ~/.vim/colors
" cd ~/.vim/colors
" curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

" Hey noob nafi, now you know how to map in VIm :D
" nnoremap (mapping for normal mode)
" inoremap(insert mode)
" vnoremap(visual mode)
" cnoremap(command mode)

map <Enter> o<ESC>
map <S-Enter> O<ESC>
inoremap jk <ESC>
inoremap { {<CR>}<Esc>O<TAB>
"" inoremap <C-s> <Esc>:w<CR>a
"" nnoremap <C-s> :w<CR>
"" nnoremap <C-c> :!g++ -o  a.out % -std=c++11<Enter>
"" nnoremap <C-x> :!./a.out

" auto open the template for CPP
:autocmd BufNewFile *.cpp 0r ~/.vim/templates/snippet.cpp
