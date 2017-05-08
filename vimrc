set nocompatible

execute pathogen#infect()

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


:nmap <D-d> :NERDTree<CR>
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
