" Slix's config -- WIP
" If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
set nocompatible

" Start pathogen for plugin loading
" The special runtime is used so that pathogen can be a submodule
runtime bundle/pathogen/autoload/pathogen.vim
call pathogen#infect()

" Color Scheme
colorscheme molokai " Until smyck sets more colors. Otherwise some
                    " colors look very off.
colorscheme smyck

" No modelines (security issues?)
set modelines=0

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

" Highlight current line, looks great in Solarized!
set cursorline

" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" GUI
if has("gui_running")
    set guioptions-=m "remove menu bar
    set guioptions-=T "remove toolbar
    set guioptions-=r "remove right-hand scroll bar
    
    " TODO: This font won't be available everywhere.
    set guifont=Inconsolata\ Medium\ 12
    
    " Default size should be nice and big
    set columns=100
    set lines=50
    
    " Anything was better than this agony!
    " Anything was more tolerable than this derision!
    " I felt that I must scream or die! and now - again!
    " hark! louder! louder! louder! louder!
    "
    " Disable cursor blink to prevent mental breakdown
    :set guicursor+=a:blinkon0
endif

" Regular tabbing settings
" Investigate whether different filetypes need different tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smarttab
set expandtab

" Substitutions should replace all occurrences
set gdefault

" Text width, sometimes filetype dependent
set colorcolumn=+1 "Color the column after textwidth

" Better scrolling (at 4 above margin)
set scrolloff=4

" Show invisible characters
set list
set listchars=tab:▸\ ,eol:¬

" Multiple buffer support?
set hidden

" Simplify compile/run cycle
" ftplugins or compiler plugins should create buffer-local commands
set autowrite
nmap <Leader>m :Make<CR>
nmap <F9> <Leader>m
nmap <Leader>r :Run<CR>
nmap <F10> <Leader>r
command -nargs=* Make FileMake <args>
command -nargs=* Run FileRun <args>

" DISABLED Disable arrow keys to force me to use hjkl
"nnoremap <up> <nop>
"nnoremap <down> <nop>
"nnoremap <left> <nop>
"nnoremap <right> <nop>
"inoremap <up> <nop>
"inoremap <down> <nop>
"inoremap <left> <nop>
"inoremap <right> <nop>
