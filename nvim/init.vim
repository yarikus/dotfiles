"dein Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=/home/gluhov/.config/nvim/plugins/repos/github.com/Shougo/dein.vim

" Required:
call dein#begin('/home/gluhov/.config/nvim/plugins')

" Let dein manage dein
" Required:
call dein#add('Shougo/dein.vim')
call dein#add('Shougo/deoplete.nvim')

" Add or remove your plugins here:
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
call dein#add('kien/ctrlp.vim')
call dein#add('tpope/vim-fugitive')
call dein#add('scrooloose/nerdtree')
call dein#add('pangloss/vim-javascript')
call dein#add('w0ng/vim-hybrid')
call dein#add('scrooloose/syntastic')
call dein#add('neomake/neomake')
call dein#add('mhinz/vim-signify')
" call dein#add('vim-airline/vim-airline')
" call dein#add('vim-airline/vim-airline-themes')
" call dein#add('Valloric/YouCompleteMe')

" You can specify revision/branch/tag.
call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Required:
call dein#end()

" Required:
filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif

"End dein Scripts-------------------------

" let g:hybrid_custom_term_colors = 1
" let g:hybrid_reduced_contrast = 1


let g:neomake_javascript_jshint_maker = {
    \ 'args': ['--verbose'],
    \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
    \ }
let g:neomake_javascript_enabled_makers = ['jshint']

set background=dark
colorscheme hybrid 

" Отображение
set number
set cursorline

" Air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_theme='hybrid'
