set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')
Plugin 'VundleVim/Vundle.vim'
"
" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-vividchalk.git'
Plugin 'scrooloose/nerdtree.git'
Plugin 'tpope/vim-surround.git'
Plugin 'tpope/vim-pastie.git'
Plugin 'tpope/vim-ragtag.git'
Plugin 'msanders/snipmate.vim.git'
Plugin 'scrooloose/nerdcommenter.git'
Plugin 'pangloss/vim-javascript.git'
Plugin 'tpope/vim-endwise.git'
Plugin 'altercation/vim-colors-solarized.git'
Plugin 'juvenn/mustache.vim.git'
Plugin 'RyanS/Tomorrow-Theme.git'
Plugin 'atweiden/vim-dragvisuals'
Plugin 'godlygeek/tabular.git'
Plugin 'kien/ctrlp.vim.git'
Plugin 'mileszs/ack.vim'
Plugin 'vim-scripts/Rainbow-Parenthesis.git'
Plugin 'wincent/Command-T'
Plugin 'tomasr/molokai'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
call vundle#end()    

filetype plugin indent on

syntax on
set background=dark
:colorscheme molokai
set softtabstop=2
set autoindent
set smartindent
set nowrap
set tabstop=2
set sw=2
filetype indent on
set nobackup
set nowritebackup
set noswapfile
set number
filetype on
filetype plugin on
set guifont=Inconsolata:h12
set wildmenu
set hlsearch
set expandtab

" Turn off that stupid highlight search
nmap <silent> ,n :set invhls<CR>:set hls?<CR>

map <S-CR> <silent>

:nmap <C-d> :NERDTree<CR>
imap <C-l> <Space>=><Space>

vmap  <expr>  <LEFT>   DVB_Drag('left')
vmap  <expr>  <RIGHT>  DVB_Drag('right')
vmap  <expr>  <DOWN>   DVB_Drag('down')
vmap  <expr>  <UP>     DVB_Drag('up')
vmap  <expr>  D        DVB_Duplicate()

let mapleader=","

let g:fuzzy_ignore = "*.log"
let g:fuzzy_ignore = "gems/*"
let g:fuzzy_ignore = ".git"
let g:fuzzy_matching_limit = 60

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_max_files=0
let g:ctrlp_max_depth=40

nnoremap <leader>b :FufBuffer<CR>
nmap <leader>fb :FufBuffer<CR>
nmap <leader>ff :FufFile<CR>

:command W w
nmap <leader>ftj :set ft=javascript<CR>
nmap <leader>fth :set ft=html<CR>
nmap <leader>ftc :set ft=css<CR>

let mapleader=','
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

" select last paste in visual mode
nnoremap <expr> gb '`[' . strpart(getregtype(), 0, 1) . '`]'"

if has("gui_running")
    set guioptions=egmrt
endif

nnoremap <leader>yr :YRShow<CR>
let g:yankring_history_dir = '~/bin/'

cmap w!! %!sudo tee > /dev/null %

let g:ctrlp_map = '<c-t>'
let g:ctrlp_max_files=0

inoremap kj <esc>

autocmd FileType html setlocal indentkeys-=*<Return>

nnoremap gp `[v`]

let g:ctrlp_custom_ignore = '\.sass-cache\|tmp\/sass-cache'

autocmd FileType js,rb,erb autocmd BufWritePre <buffer> :%s/\s\+$//e

" delete single character, preserve buffer
map x :let @s=@"<cr>"tdl:let @"=@s<cr>
