set encoding=utf8
set termencoding=utf8
set guicursor=a:ver10
set guioptions-=r

syntax on

set nocompatible
set nobackup
set noswapfile
set noerrorbells visualbell t_vb=

set number
set cursorline
set wildmenu
set lazyredraw

set hlsearch
set incsearch
set ignorecase
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>

set shiftwidth=2 softtabstop=2 tabstop=2 expandtab

set wrap!
let &listchars = 'tab:»' . nr2char(0xA0) . ',trail:·,eol:¶' ",extends:>,precedes:<'

augroup filetypedetect
au! BufRead,BufNewFile *.as setfiletype java
au! BufRead,BufNewFile *.hx setfiletype haxe
au! BufRead,BufNewFile *.tpl setfiletype htmldjango
au! bufread,bufnewfile *.j setfiletype jinja
au! bufread,bufnewfile *.go setfiletype go
augroup END

set ai

set statusline=\ %F "tail of the filename
set statusline+=%= "left/right separator
set statusline+=%c\  "cursor column
set statusline+=%l/%L "cursor line/total lines
set statusline+=\ %P\  "percent through file

vmap < <gv
vmap > >gv

nmap <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeWinSize = 30
let NERDTreeIgnore=['\.pyc$', '\~$']
let g:netrw_list_hide = '\.pyc$'

autocmd FileType python setlocal shiftwidth=4 softtabstop=4 tabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 softtabstop=4 tabstop=4
nnoremap <C-F> :%s/\s\+$//g<CR>
