set autoindent
set autoread
set backspace=indent,eol,start
set colorcolumn=80
set complete-=i
set cursorline
set display+=lastline
set encoding=utf-8
set formatoptions+=j " Delete comment character when joining commented lines
set grepformat=%f:%l:%c:%m
set grepprg=ag\ --vimgrep\ $*
set history=200
set hlsearch
set incsearch
set laststatus=2
set nrformats-=octal
set noswapfile
set number
set path+=**
set ruler
set scrolloff=1
set smartcase
set smarttab
set wildignore+=**/_build/**
set wildmenu
set wildmode=longest:full

autocmd FileType erlang setlocal expandtab shiftwidth=2 softtabstop=2
autocmd FileType python setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType java setlocal expandtab shiftwidth=4 softtabstop=4
autocmd FileType xml setlocal expandtab shiftwidth=2 softtabstop=2

syntax on
filetype indent plugin on

set directory^=$HOME/.vim/tmp//

" Use <C-L> to clear the highlighting of :set hlsearch.
if maparg('<C-L>', 'n') ==# ''
  nnoremap <silent> <C-L> :nohlsearch<C-R>=has('diff')?'<Bar>diffupdate':''<CR><CR><C-L>
endif

" netrw config
let g:netrw_banner=0        " disable banner
let g:netrw_browse_split=4  " open in prior window
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view

"switch buffers with Ctrl-Tab
map <C-Tab> :bnext<CR>
map <C-S-Tab> :bprevious<CR>

nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
nnoremap <leader>bb :buffers<cr>:buffer<space>
nnoremap <leader>bd :bdelete<cr>
nnoremap <leader>ff :find<space>
nnoremap <leader>gg :grep<space>
nnoremap <leader>gw :grep <C-r><C-w><cr>
nnoremap <leader>fw :find <C-r><C-w>
nnoremap <leader>w  :w<cr>
"delete buffer without losing the split
nnoremap <C-c> :bp\|bd #<CR>

vnoremap <leader>j :!json_pp<cr>
vnoremap <leader>x :!xmllint --format -<cr>

" highlight unwanted whitespace
autocmd BufWinEnter * syntax match TrailingWhitespace "\s\+$"
highlight TrailingWhitespace ctermbg=Red guibg=Red
autocmd BufWinEnter * syntax match Tabbies "\t"
highlight Tabbies ctermbg=DarkGreen guibg=DarkGreen


"Function key maps
" <F1> is help, dont remap it
" <F2> shows diff since last save
nnoremap <F2> :w ! diff % -<CR>
