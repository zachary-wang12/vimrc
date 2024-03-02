""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 VIMRC-MAT
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Matthew Z. Wang
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Matthew's VIM Configuration
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Matthew Z. Wang
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
" Display relative line number
set relativenumber
" Enable syntax highlight
syntax on
" Always show ruler
set ruler
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
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
    if (has("nvim"))
        "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
        let $NVIM_TUI_ENABLE_TRUE_COLOR=1
    endif
    "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
    "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
    " < https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
    if (has("termguicolors"))
        set termguicolors
    endif
endif
" Use industry color scheme
colorscheme industry

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