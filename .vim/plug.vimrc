""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                               VIMRC-MAT-PLUG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Author: Matthew Z. Wang
" Date: Mar 21, 2023
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug Management
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug Management {{{
if !len(globpath(&rtp, '**/plug.vim'))

endif

if len(globpath(&rtp, '**/plug.vim'))
    call plug#begin()
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'preservim/nerdtree'
    Plug 'ctrlpvim/ctrlp.vim'
    call plug#end()
endif
" }}}

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Config
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Airline Config {{{
if exists(':AirlineRefresh')
    " Automatically displays all buffers when there's only one tab open
    let g:airline#extensions#tabline#enabled = 1
    " Choose unique_tail_improved path formatter
    let g:airline#extensions#tabline#formatter = 'unique_tail_improved'
endif
" }}}
