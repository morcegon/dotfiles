syntax on
set encoding=utf8

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'tpope/vim-fugitive'

Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'ayu-theme/ayu-vim'

Plugin 'vim-syntastic/syntastic'

Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'majutsushi/tagbar'
Plugin 'ctrlpvim/ctrlp.vim'

call vundle#end()            " required
filetype plugin indent on    " required


set backspace=indent,eol,start
set ruler
set relativenumber
set showcmd

hi clear SignColumn

set termguicolors
let ayucolor="mirage"
colorscheme ayu

set laststatus=2


let g:airline_powerline_fonts = 1
let g:airline_detect_past =1
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='molokai'

" ----- scrooloose/syntastic settings -----
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"
let g:syntastic_php_checkers = ['php', 'phpcs']
augroup mySyntastic
au!
au FileType tex let b:syntastic_mode = "passive"
augroup END


" ----- xolox/vim-easytags settings -----
"Where to look for tags files
set tags=./tags;,~/.vimtags
" Sensible defaults
let g:easytags_events = ['BufReadPost', 'BufWritePost']
let g:easytags_async = 1
let g:easytags_dynamic_files = 2
let g:easytags_resolve_links = 1
let g:easytags_suppress_ctags_warning = 1

"----- majutsushi/tagbar settings -----
"Open/close tagbar with \b
nmap <silent> <leader>b :TagbarToggle<CR>
" Uncomment to open tagbar automatically whenever possible
"autocmd BufEnter * nested :call tagbar#autoopen(0)
