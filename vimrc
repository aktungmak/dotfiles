"color scheme ==========  
colorscheme desert

"basic settings ========
set backspace=indent,eol,start
set history=1000
set hlsearch
set incsearch
set ic
set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
set nowrap
set number

" indentation stuff
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab

"keybindings ===========
"This unsets the "last search pattern" register by hitting return
nnoremap <CR> :noh<CR><CR>


"move lines up and down
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

"switching buffers with Ctrl-Tab
map <C-Tab> :bnext<CR>
map <C-S-Tab> :bprevious<CR>

" Function key maps
" <F1> is help, dont remap it
" <F2> shows diff since last save
nnoremap <F2> :w ! diff % -<CR>
" <F5> inserts current datestamp
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M:%S ")<CR>P
inoremap <F5> <C-R>=strftime("%Y-%m-%d %H:%M:%S ")<CR>

" <F10> shows a menu of buffer and file names
set wildchar=<Tab> wildmenu wildmode=full
set wildcharm=<C-Z>
nnoremap <F10> :b <C-Z>

"plugins ===============
call plug#begin('~/vimfiles/plugged')

Plug 'fatih/vim-go'

call plug#end()
