runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()

"Turn on syntax
if has("syntax")
  syntax on
endif

"Jump to last edited line
if has("autocmd")
  au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
endif

"Indent correctly
if has("autocmd")
  filetype plugin indent on
endif


set showcmd		" Show (partial) command in status line.
set showmatch		" Show matching brackets.
set ignorecase		" Do case insensitive matching
set smartcase		" Do smart case matching
set hlsearch		" Highlight search-terms
set incsearch		" Incremental search
set autowrite		" Automatically save before commands like :next and :make
set hidden             " Hide buffers when they are abandoned
set mouse=a		" Enable mouse usage (all modes)

set history=1000

runtime macros/matchit.vim

set wildmenu
set wildmode=list:longest

set title
set scrolloff=3
set backupdir=~/.vim/tmp,~/.tmp,/var/tmp,/tmp
set directory=~/.vim/tmp,~/.tmp,/var/tmp,/tmp
set ruler

set backspace=indent,eol,start

set visualbell
colorscheme desert
set background=light