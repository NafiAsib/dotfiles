"" set ruler
set relativenumber      " set relative line number on
set number              " to turn off set nonumber
set clipboard=unnamedplus   " turns on system clipboard

" The expandtab property will ensure that when you hit tab it will actually use spaces
set expandtab

set tabstop=4           " set tab to 4 spaces

" tabstop is about how wide a Tab is defined, while softtabstop is about how far cursor moves while typing Tab
set softtabstop=4


set shiftwidth=4        " set indent (>, <) 4 spaces
set autoindent          " indent newline matched with previous one

set textwidth=80        " wrapping
set encoding=utf-8

" Theme
syntax enable
set background=dark
let g:gruvbox_number_column='bg1'
colorscheme gruvbox
set mouse=a
let g:airline_theme='gruvbox'

set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set ignorecase          " Ignore case in searches by default
set smartcase           " But make it case sensitive if an uppercase is entered

" faced some color issue with WSL 1, later fixed
"" colorscheme jellybeans
" mkdir -p ~/.vim/colors
" cd ~/.vim/colors
" curl -O https://raw.githubusercontent.com/nanotech/jellybeans.vim/master/colors/jellybeans.vim

" Hey noob nafi, now you know how to map in VIm :D
" nnoremap (mapping for normal mode)
" inoremap(insert mode)
" vnoremap(visual mode)
" cnoremap(command mode)

let mapleader="\<Space>"
" Quick Save
nmap <Leader>w :w<CR>
nmap <Leader>q :q<CR>
nmap <Leader>q1 :q!<CR>
nmap <Leader>x :wq<CR>
nmap <Leader>n :NERDTreeToggle<CR>
nmap <Leader>f <Esc><Esc>:Files!<CR>
nnoremap <leader>d "_d
let g:user_emmet_leader_key=','


map <Enter> o<ESC>
map <S-Enter> O<ESC>
"" inoremap jk <ESC>
" remaping esc with caps lock systemwide feels much better
"" inoremap { {<CR>}<Esc>O<TAB>
"" inoremap <C-s> <Esc>:w<CR>a
"" nnoremap <C-s> :w<CR>
"" nnoremap <C-c> :!g++ -o  a.out % -std=c++11<Enter>
"" nnoremap <C-x> :!./a.out

" auto open the template for CPP
"" :autocmd BufNewFile *.cpp 0r ~/.vim/templates/snippet.cpp

// Insert Date
:nnoremap <F5> "=strftime("%a %b %d, %Y")<CR>P
:inoremap <F5> <C-R>=strftime("%a %b %d, %Y")<CR>

"" nmap <C-w> :! ~/tw.sh<CR><CR>
"" nnoremap <silent> <C-w> :<C-u>silent !~/tw.sh <C-r>=shellescape(expand('<cword>'), 1)<CR><CR><C-l> " This works good

""function! ClearRegisters()
""    let regs='abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789/-="*+'
""    let i=0
""    while (i<strlen(regs))
""        exec 'let @'.regs[i].'=""'
""        let i=i+1
""    endwhile
""endfunction

""command! ClearRegisters call ClearRegisters()

""if &term =~ '256color'
""  " disable Background Color Erase (BCE) so that color schemes
""  " render properly when inside 256-color tmux and GNU screen.
""  " see also http://snk.tuxfamily.org/log/vim-256color-bce.html
""  set t_ut=
""endif
