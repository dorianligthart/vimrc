syntax	on
filetype plugin indent on
set ts=2 sts=2 sw=2 et ai si
set encoding=UTF-8
set tabstop=4
set shiftwidth=4
set mouse=a
set showmatch showmode

" relative linenumbers
set rnu
autocmd CursorMoved * set number

call plug#begin()

" clipboard plugin
Plug 'Jorengarenar/fauxClip'
let g:fauxClip_copy_cmd='xclip-f-i-selectionclipboard'
let g:fauxClip_copy_primary_cmd='xclip-f-i'
let g:fauxClip_paste_cmd='xclip-o-selectionclipboard'
let g:fauxClip_paste_primary_cmd='xclip-o'
let g:fauxClip_suppress_errors=0
let g:fauxClip_always_use=1

" (un)comment plugin, gc{motion}, gC{motion}
Plug 'tomtom/tcomment_vim'

" goto: previous=[*  next=]* 
Plug 'tpope/vim-unimpaired'

" automatically closes brackets/quotes
Plug 'Raimondi/delimitMate'

" auto update c tag files:
Plug 'ludovicchabant/vim-gutentags'
" auto complete using tab
Plug 'neoclide/coc.nvim', {'branch': 'release'}
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" multi cursor in vim (?)
Plug 'mg979/vim-visual-multi', {'branch': 'master'}

" file explorer/filename editing
Plug 'preservim/nerdtree'
noremap <C-e> :NERDTree<CR>
imap <C-e> <Esc>:NERDTree<CR>
vmap <C-e> <Esc>:NERDTree<CR>

"   has to be last:
Plug 'ryanoasis/vim-devicons'
call plug#end()
