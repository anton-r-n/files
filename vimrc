set encoding=utf8
set nocompatible

set guioptions=g
set guioptions-=T
set guioptions-=m

set statusline=\ %<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P\ 

highlight Cursor guifg=white guibg=black
highlight iCursor guifg=white guibg=steelblue
set guicursor=a:ver10-Cursor-blinkwait300-blinkon500-blinkoff500

syntax enable

set nobackup
set noswapfile

set number
set incsearch
set ignorecase

set novisualbell
set t_vb=
set vb

set mouse=a
set mousemodel=popup
set mousehide

set ch=1

set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

set wrap!

"whitespaces
"set nowrap list listchars=tab:».,trail:·,eol:¶
let &listchars = 'tab:»' . nr2char(0xA0) . ',trail:·,eol:¶' ",extends:>,precedes:<'

set ai

au BufRead,BufNewFile *.tpl setfiletype htmldjango
au BufNewFile,BufRead *.j set filetype=htmljinja
au BufNewFile,BufRead *.mxml set filetype=mxml
au BufNewFile,BufRead *.as set filetype=actionscript
au BufNewFile,BufRead *.less set filetype=less
au BufNewFile,BufRead *.go set filetype=go

nmap <silent> <F7> :NERDTreeToggle<CR>
let NERDTreeWinSize = 30
let NERDTreeIgnore=['\.pyc$', '\~$']

" < & > - делаем отступы для блоков
vmap < <gv
vmap > >gv

map <c-f> <esc>:%s/\s\+$//<cr>

autocmd FileType python setlocal shiftwidth=4 tabstop=4 softtabstop=4
" autocmd FileType htmljinja setlocal shiftwidth=4 tabstop=4 softtabstop=4
" autocmd FileType html setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd FileType svg setlocal shiftwidth=2 tabstop=2 softtabstop=2
" autocmd FileType scala setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Press Space to turn off highlighting and clear any message already displayed.
nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>
set hlsearch
