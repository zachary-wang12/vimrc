""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VIMRC
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Zachary Z. Wang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Zachary's VIM Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Zachary Z. Wang
" Email: zwang-p@outlook.com
" Date: Mar 19, 2023
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configuration File Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
augroup filetype_vim
    autocmd!
    autocmd FileType vim setlocal foldmethod=marker
augroup END

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Global Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable compatible mode with VI
set nocompatible
" Disable warning when hidden unsaved buffer
set hidden
" Enable filetype detectionza
filetype on
" Load filetype matched plugin
filetype plugin on
" Let <backspace> can delete indent, eol and line start
set backspace=indent,eol,start
" Always create split windows on right and below side
set splitright splitbelow
" Do not wrap line
set nowrap
" Enable pare <>
set matchpairs+=<:>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Indent Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable smart indent
set smartindent
" Enable auto indent
set autoindent
" Use spaces instead of tabs
set expandtab
" Tab key indents by 4 spaces
set softtabstop=4
" >> Indent by 4 spaces
set shiftwidth=4
" >> Indents to next multiple of shiftwidth
set shiftround

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Display line number
set number
" Enable syntax highlight
syntax on
" Always show ruler
set ruler
" Always show column color
set colorcolumn=80
highlight ColorColumn ctermbg=darkgrey guibg=#2e2e2e
" Always show status line
set laststatus=2
" Always show current mode
set showmode
" Always show command
set showcmd
" Don't redraw while executing macros
set lazyredraw
" For regular expressions turn magic on
set magic
" Show matching brackets when text indicator is over them
set showmatch
" Turn off error bell
set noerrorbells
" Turn off visual error bell
set novisualbell
set t_vb=
set tm=500
" Enable enhanced tab autocomplete
set wildmenu
" Complete till longest string, then open the wildmenu
set wildmode=list:longest,full

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Search Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable increased search
set incsearch
" Highlight search result
set hlsearch
" Case insensible
set ignorecase
" Enable smart case sensitive
set smartcase

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Cache Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Disable backup
set nobackup
" Disable viminfo
set viminfo=""
" Do NOT create swap file
set noswapfile
" Auto read when file changed by external
set autoread

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key Bindings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set <space> as mapleader
let mapleader = "\<space>"
" Map jk in INSERT MODE as <ESC> 
inoremap jk <esc>
" Map <leader><leader> to switch highligh search
nnoremap <silent> <leader><leader> :noh<return><esc>
