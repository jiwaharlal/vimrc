set clipboard=unnamedplus
set tabstop=3 shiftwidth=3 expandtab
set number
set hlsearch
colorscheme morning

" auto remove trailing whitespaces
autocmd BufWritePre * :%s/\s\+$//e

" highilght trailing whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

let mapleader=","
set timeout timeoutlen=1500

nnoremap q Kwbd
ca q Kwbd                                    " override q command to close buffer but not window
map <M-0> :NERDTreeToggle<CR>                " Alt-0 will open/close folder tree navigator
map <C-tab> :ToggleBufExplorer<CR>                 " Ctrl-tab will open buffexplorer bufers window
"autocmd BufEnter * if &modifiable | NERDTreeFind | wincmd p | endif
map <C-r> :NERDTreeFind<CR> zz :wincmd p<CR>

let g:fzf_launcher = 'rxvt -geometry 120x30 -font 9x15 -e sh -c %s'

map <C-h> :wincmd h<CR>                      " Ctrl-h moves cursor to the left split window (folder tree)
map <C-l> :wincmd l<CR>                      " Ctrl-l moves cursor to the right split window (edited file)
map <C-j> :wincmd j<CR>                      " Ctrl-j to move splitter left
map <C-k> :wincmd k<CR>                      " Ctrl-k to move splitter right
map <C-Left> :wincmd ><CR>                   " Ctrl-left adjust window width
map <C-Right> :wincmd <<CR>                  " Ctrl-right adjust window width

map <C-f> :EXGSearchCWord<CR>             " Ctrl-f search word under cursor
map <C-s> :EXGSearchToggle<CR>            " Ctrl-s open/close search window

map <M-/> <leader>c<space>                " Alt-/ Toggle comment on line/block

map <M-o> :A<CR>                             " Alt-o Switch header/source with a.vim

map <M-m> :TagbarToggle<CR><C-w>l         " Alt-m toggles tagbar - class methods etc.
nmap ,tt :TagbarToggle<CR><C-w>l

nmap ,cl :let @+=expand("%")<CR>          " ',cl' sequnce in command mode will copy current file's path to clipboard

"To start exploring in the current window, use: >
 "<Leader>be   or   :BufExplorer   or   Your custom key mapping
"To toggle bufexplorer on or off in the current window, use: >
ca be BufExplorer                " start exploring in the current window
ca bt ToggleBufExplorer          " toggle bufexplorer on or off in the current window

set splitright

set exrc
set secure

let &path.="src/include,/usr/include/AL,/usr/local/include,/usr/include/x86_64-linux-gnu"

" set runtimepath^=~/.vim/bundle/ctrlp.vim

let g:clang_library_path = "/usr/lib/llvm-3.6/lib"

" YouCompleteMe default config which works for all locations
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
nmap <F2> :YcmCompleter GoTo<CR>
ca dec YcmCompleter GoToDeclaration
ca def YcmCompleter GoToDefinition

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

Plugin 'Valloric/YouCompleteMe'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'exvim/ex-gsearch'
Plugin 'exvim/ex-utility'
Plugin 'fholgado/minibufexpl.vim'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'junegunn/fzf'
Plugin 'majutsushi/tagbar'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'rdnetto/YCM-Generator'
Plugin 'rgarver/Kwbd.vim'
Plugin 'rking/ag.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-scripts/a.vim'
Plugin 'wincent/command-t'

call vundle#end()            " required
filetype plugin indent on    " required
