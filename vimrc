set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim' 
Plugin 'othree/vim-autocomplpop'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jiangmiao/auto-pairs'
 
call vundle#end()
filetype plugin indent on


set ruler
set showmode
set background=dark
set hlsearch
set cursorline
set number
 
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4
set backspace=2
set mouse=a

set autoindent
set smartindent
set cindent
set fileencodings=utf8,big5
set foldmethod=manual

nmap <bslash>p :set paste!<CR>
nmap <bslash>x mzHmx:silent! :%s/[ \t][ \t]*$//g<CR>`xzt`z
nmap <bslash>t :Tlist<CR>

nmap <F9> <ESC>\x:w<CR>:!g++ -O2 -std=c++11 % -o %<<CR>
nmap <F12> <ESC>\x:w<CR>:!./%<<CR>

imap <F9> <ESC>\x:w<CR>:!g++ -O2 -std=c++11 % -o %<<CR>
imap <F12> <ESC>\x:w<CR>:!./%<<CR>
inoremap <F8> <C-O>za
nnoremap <F8> za
onoremap <F8> <C-C>za
vnoremap <F8> mzfil
nmap <F3> :tabp<ENTER>
nmap <F4> :tabn<ENTER>
syntax on
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
let g:ycm_seed_identifiers_with_syntax=1
let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_complete_in_strings = 1
let g:ycm_complete_in_comments = 1

set completeopt=longest,menu
" 補齊括弧
" 語法
" inoremap  triger_char  mapping_str
" 映射指令     觸發字元     映射字串
"
" 註：<LEFT> 為向右鍵字元
