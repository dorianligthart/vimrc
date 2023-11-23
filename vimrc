" CtrlP :

" ctrlp pathogen plugin:
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_by_filename = 0
execute pathogen#infect()

" plugins:
call plug#begin()
	Plug 'tpope/vim-fugitive'

	Plug 'Raimondi/delimitMate'
	Plug 'tpope/vim-surround'
	
	Plug 'vim-airline/vim-airline'

	Plug 'neoclide/coc.nvim', {'branch': 'release'}

	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'

	Plug 'mg979/vim-visual-multi', {'branch': 'master'}

	Plug 'preservim/nerdtree'

"   experimental:
" 	Plug 'w0rp/ale'
	Plug 'editorconfig/editorconfig-vim'
""	Plug 'airblade/vim-gitgutter'

"   has to be last:
	Plug 'ryanoasis/vim-devicons'

call plug#end()


" GENERAL :
set textwidth=80
set colorcolumn=+1
set tabstop=4
set shiftwidth=4
set encoding=UTF-8
set mouse=a


" Make \n considered as part of words
set iskeyword+=10
" Turn syntax highlighting on.
syntax on
" Disable compatibility with vi which can cause unexpected issues.
set nocompatible
" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on
" Enable plugins and load plugin for the detected file type.
filetype plugin on
" Load an indent file for the detected file type.
filetype indent on
" While searching though a file incrementally highlight matching characters as you type.
" set incsearch
" Show partial command you type in the last line of the screen.
set showcmd
" Show the mode you are on the last line.
set showmode
" Show matching words during a search.
set showmatch
" Use highlighting when doing a search.
set nohlsearch

" RELATIVE LINENUMBERS :
set rnu
autocmd CursorMoved * set number

" COLORSCHEME :
colorscheme ron
set background=dark

hi Boolean ctermfg=white
hi Character ctermfg=white
hi ColorColumn ctermfg=white
hi Comment ctermfg=green
hi Conceal ctermfg=white
hi Conditional ctermfg=white
hi Constant ctermfg=white
hi Cursor ctermfg=white
hi CursorColumn ctermfg=white
hi CursorLine ctermfg=white
hi CursorLineFold ctermfg=white
hi CursorLineNr ctermfg=white
hi CursorLineSign ctermfg=white
hi Debug ctermfg=white
hi Define ctermfg=white
hi Delimiter ctermfg=white
hi DiffAdd ctermfg=white
hi DiffChange ctermfg=white
hi DiffDelete ctermfg=white
hi DiffText ctermfg=white
hi Directory ctermfg=white
hi EndOfBuffer ctermfg=white
hi Error ctermfg=white
hi ErrorMsg ctermfg=white
hi Exception ctermfg=white
hi Float ctermfg=white
hi FoldColumn ctermfg=white
hi Folded ctermfg=white
hi Function ctermfg=white
hi Identifier ctermfg=white
hi Ignore ctermfg=white
hi IncSearch ctermfg=white
hi Include ctermfg=white
hi Keyword ctermfg=white
hi Label ctermfg=white
hi LineNr ctermfg=white
hi LineNrAbove ctermfg=white
hi LineNrBelow ctermfg=white
hi Macro ctermfg=white
hi MatchParen ctermfg=white
hi ModeMsg ctermfg=white
hi MoreMsg ctermfg=white
hi NonText ctermfg=white
" 	normal = everything
hi Normal ctermfg=white
hi Number ctermfg=white
hi Operator ctermfg=white
hi Pmenu ctermfg=white
hi PmenuSbar ctermfg=white
hi PmenuSel ctermfg=white
hi PmenuThumb ctermfg=white
hi PreCondit ctermfg=white
hi PreProc ctermfg=white
hi Question ctermfg=white
hi QuickFixLine ctermfg=white
hi Repeat ctermfg=white
hi Search ctermfg=white ctermbg=blue
hi ShowMarksHL ctermfg=white
hi SignColumn ctermfg=white
hi Special ctermfg=white
hi SpecialChar ctermfg=white
hi SpecialComment ctermfg=white
hi SpecialKey ctermfg=white
hi SpellBad ctermfg=white
hi SpellCap ctermfg=white
hi SpellLocal ctermfg=white
hi SpellRare ctermfg=white
hi Statement ctermfg=white
hi StatusLine ctermfg=white
hi StatusLineNC ctermfg=white
hi StatusLineTerm ctermfg=white
hi StatusLineTermNC ctermfg=white
hi StorageClass ctermfg=white
hi String ctermfg=white
hi Structure ctermfg=white
hi TabLine ctermfg=white
hi TabLineFill ctermfg=white
hi TabLineSel ctermfg=white
hi Tag ctermfg=white
hi Title ctermfg=white
hi Todo ctermfg=white
hi ToolbarButton ctermfg=white
hi ToolbarLine ctermfg=white
hi Type ctermfg=white
hi Typedef ctermfg=white
hi Underlined ctermfg=white
hi VertSplit ctermfg=white
hi Visual ctermfg=white
hi WarningMsg ctermfg=white
hi WildMenu ctermfg=white
" hi clear ctermfg=white
" hi default ctermfg=white
hi diffOnly ctermfg=white
" hi link ctermfg=white


" Generic :
hi ColorColumn ctermbg=DarkGray
hi LineNrAbove guifg=darkgray ctermfg=darkgray
hi LineNrBelow guifg=darkgray ctermfg=darkgray


" C language:
hi cBadContinuation ctermfg=cyan
hi cCharacter ctermfg=brown
hi cComment ctermfg=darkgreen
hi cComment2String ctermfg=cyan
hi cCommentError ctermfg=red
hi cCommentL ctermfg=darkgreen
hi cCommentSkip ctermfg=cyan
hi cCommentStart ctermfg=darkgreen
hi cCommentStartError ctermfg=cyan
hi cCommentString ctermfg=cyan
hi cConditional ctermfg=yellow
hi cConstant ctermfg=white
hi cCppInElse2 ctermfg=cyan
hi cCppInWrapper ctermfg=cyan
hi cCppOut ctermfg=cyan
hi cCppOutIf2 ctermfg=cyan
hi cCppOutSkip ctermfg=cyan
hi cCppOutWrapper ctermfg=cyan
hi cCppString ctermfg=cyan
hi cCurlyError ctermfg=red
hi cDefine ctermfg=green
hi cErrInBracket ctermfg=red
hi cErrInParen ctermfg=red
hi cError ctermfg=red
hi cFloat ctermfg=cyan
hi cFormat ctermfg=cyan
hi cIf0 ctermfg=cyan
hi cInclude ctermfg=lightgreen
hi cIncluded ctermfg=lightgreen
hi cLabel ctermfg=lightgreen
hi cNumber ctermfg=white
hi cOctal ctermfg=cyan
hi cOctalError ctermfg=red
hi cOctalZero ctermfg=cyan
hi cOperator ctermfg=gray
hi cParenError ctermfg=red
hi cPreCondit ctermfg=green
hi cPreConditMatch ctermfg=green
hi cPreProc ctermfg=darkgreen
hi cRepeat ctermfg=yellow
hi cSpaceError ctermfg=red
hi cSpecial ctermfg=brown
hi cSpecialCharacter ctermfg=brown
hi cSpecialError ctermfg=red
hi cStatement ctermfg=magenta
hi cStorageClass ctermfg=gray
hi cString ctermfg=brown
hi cStructure ctermfg=yellow
hi cTodo ctermfg=green
hi cType ctermfg=gray
hi cTypedef ctermfg=yellow
hi cUserLabel ctermfg=magenta
hi cWrongComTail ctermfg=cyan

