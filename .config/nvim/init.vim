set relativenumber
set clipboard=unnamedplus
set tabstop=4
set softtabstop=4
set shiftwidth=4
set autoindent
filetype plugin on
set textwidth=80
syntax on
" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin(stdpath('config').'/plugged')
"" Plug 'vimwiki/vimwiki'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Initialize plugin system
call plug#end()



nmap <Leader>f <Esc><Esc>:Files!<CR>

"" inoremap jk <ESC>

"" let g:vimwiki_list = [{'path': '~/vimwiki/', 'syntax': 'markdown', 'ext': '.md'}]

" Convenient line moving
"" nnoremap <A-j> :m .+1<CR>==						" move current line +1
"" nnoremap <A-k> :m .-2<CR>==						" move current line -2
"" inoremap <A-j> <Esc>:m .+1<CR>==gi				" same in insert mode
"" inoremap <A-k> <Esc>:m .-2<CR>==gi				" same in insert mode
"" vnoremap <A-j> :m '>+1<CR>gv=gv					" move selected block +1
"" vnoremap <A-k> :m '<-2<CR>gv=gv					" move selected block -2

" Insert Date
:nnoremap <F5> "=strftime("%a %b %d, %Y")<CR>P
:inoremap <F5> <C-R>=strftime("%a %b %d, %Y")<CR>
