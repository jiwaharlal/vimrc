set clipboard=unnamedplus
set tabstop=3 shiftwidth=3 expandtab
set number
set hlsearch
colorscheme morning

let mapleader=","
set timeout timeoutlen=1500

nnoremap q Kwbd
ca q Kwbd                                    " override q command to close buffer but not window
map <M-0> :NERDTreeToggle<CR>                " Alt-0 will open/close folder tree navigator
"map <C-tab> :bn<CR>:redraw<CR>:ls<CR>        " Ctrl-Tab to switch to next buffer
"map <C-S-tab> :bp<CR>:redraw<CR>:ls<CR>      " Ctrl-Shift-Tab to switch to previous buffer
map <C-tab> :ToggleBufExplorer<CR>                 " Ctrl-tab will open buffexplorer bufers window

map <C-h> :wincmd h<CR>                      " Ctrl-h moves cursor to the left split window (folder tree)
map <C-l> :wincmd l<CR>                      " Ctrl-l moves cursor to the right split window (edited file)
map <C-j> :wincmd j<CR>                      " Ctrl-j to move splitter left
map <C-k> :wincmd k<CR>                      " Ctrl-k to move splitter right
map <C-Left> :wincmd ><CR>                   " Ctrl-left adjust window width
map <C-Right> :wincmd <<CR>                  " Ctrl-right adjust window width

map <C-f> :EXGSearchCWord<CR>             " Ctrl-f search word under cursor
map <C-s> :EXGSearchToggle<CR>            " Ctrl-f open/close search window

map <M-/> <leader>c<space>                " Alt-/ Toggle comment on line/block

map <M-o> :A<CR>                             " Alt-o Switch header/source with a.vim
"map <M-o> :e %:p:s,.hpp$,.X123X,:s,.cpp$,.hpp,:s,.X123X$,.cpp,<CR>  " Brute switch header/source for c++
"
map <M-m> :TagbarToggle<CR><C-w>l         " Alt-m toggles tagbar - class methods etc.
"map tt TagbarToggle
nmap ,tt :TagbarToggle<CR><C-w>l

nmap ,cl :let @+=expand("%")<CR>          " ',cl' sequnce in command mode will copy current file's path to clipboard

"map <C-k> <C-p>

"To start exploring in the current window, use: >
 "<Leader>be   or   :BufExplorer   or   Your custom key mapping
"To toggle bufexplorer on or off in the current window, use: >
ca be BufExplorer                " start exploring in the current window
ca bt ToggleBufExplorer          " toggle bufexplorer on or off in the current window

set splitright

set exrc
set secure

let &path.="src/include,/usr/include/AL,"

" set runtimepath^=~/.vim/bundle/ctrlp.vim

" YouCompleteMe default config which works for all locations
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nmap <F2> :YcmCompleter GoTo<CR>

" let g:acp_enableAtStartup = 1
" Vundle
" Plugin management
" Please set everything else above
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

"Plugin 'FuzzyFinder'
"Plugin 'L9'
Plugin 'Valloric/YouCompleteMe'
Plugin 'exvim/ex-gsearch'
Plugin 'exvim/ex-utility'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rdnetto/YCM-Generator'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'wincent/command-t'
"Plugin 'SkidanovAlex/CtrlK'
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/a.vim'
"Plugin 'exvim/ex-autocomplpop'
Plugin 'rking/ag.vim'
Plugin 'rgarver/Kwbd.vim'

call vundle#end()            " required
filetype plugin indent on    " required
