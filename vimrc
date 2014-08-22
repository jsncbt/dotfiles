" Combination of these setting plus others 
" http://amix.dk/vim/vimrc.html
" https://github.com/jaysw/dotfiles/blob/master/vimrc

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic Setup
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" get rid of Vi compatibility mode. SET FIRST!
set nocompatible          

" http://lists.alioth.debian.org/pipermail/pkg-vim-maintainers/2007-June/004020.html
set modelines=0

" Map the leader key to comma
let mapleader=","

" Use semicolon as colon
nnoremap ; :

" Esc shall be jj
inoremap jk <ESC>

" show intermediate commands
set showcmd

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => https://github.com/tpope/vim-pathogen
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
execute pathogen#infect()
execute pathogen#helptags()
syntax on
" filetype [ON] plugin [ON] ident [ON]
filetype plugin indent on

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => VIM user interface
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Set 7 lines to the cursor - when moving vertically using j/k
set so=10

" Turn on the WiLd menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc

"Always show current position
set ruler

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch

" Set line numbers
set number
set relativenumber

" Highlight search results
set hlsearch

" Clear search results on leader
nnoremap <leader><space> :noh<cr>

" Don't redraw while executing macros (good performance config)
set lazyredraw

" Show matching brackets when text indicator is over them
set showmatch

" highlight the line where the cursor is at for my poor eyes
set cursorline
hi CursorLine term=NONE cterm=NONE guibg=Grey40

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500

" show the current mode
set showmode

" Set visual characters, Textmate like
" set list
" set listchars=tab:▸\ ,eol:¬
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable syntax highlighting
syntax enable
" colorscheme desert        " set colorscheme
set background=dark
colorscheme solarized

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" enable 256-color mode.
set t_Co=256              

" Use Unix as the standard file type
set ffs=unix,dos,mac

" this is set on the filetype plugin for python only
" highlights line if chars over 80
" highlight OverLength ctermbg=red ctermfg=white guibg=#592929
" match OverLength /\%81v.\+/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4
set softtabstop=4

" always indent/outdent to the nearest tabstop
set shiftround            

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Editing mappings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remap VIM 0 to first non-blank character
map 0 ^

" Move a line of text using ALT+[jk] or Comamnd+[jk] on mac
" nmap <M-j> mz:m+<cr>`z
" nmap <M-k> mz:m-2<cr>`z
" vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
" vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
  nmap <D-j> <M-j>
  nmap <D-k> <M-k>
  vmap <D-j> <M-j>
  vmap <D-k> <M-k>
endif

" Delete trailing white space on save, useful for Python and CoffeeScript ;)
func! DeleteTrailingWS()
  exe "normal mz"
  %s/\s\+$//ge
  exe "normal `z"
endfunc
autocmd BufWrite *.py :call DeleteTrailingWS()
autocmd BufWrite *.coffee :call DeleteTrailingWS()

" Make < > shifts keep selection
vnoremap < <gv
vnoremap > >gv

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Moving around, tabs, windows and buffers
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Tab for moving bracket pairs
nnoremap <tab> %
vnoremap <tab> %
" Treat long lines as break lines (useful when moving around in them)
map j gj
map k gk

" unmap arrow keys ftw
no <down> <Nop>
no <left> <Nop>
no <right> <Nop>
no <up> <Nop>

ino <down> <Nop>
ino <left> <Nop>
ino <right> <Nop>
ino <up> <Nop>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fix Vim’s horribly broken default regex “handling” by automatically
" inserting a \v before any string you search for.
" nnoremap / /\v
" vnoremap / /\v

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Diary, Log
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" <F2> - Insert a new log entry
" strftime insertion from
" http://vim.wikia.com/wiki/Insert_current_date_or_time
nnoremap <F2> Go<NL><NL><Esc>i@<Esc>"=strftime("\%a \%d/\%m/\%Y \%I:\%M \%p")<CR>po*
" Custom highlighting of dates in log files. Adapted from
" http://stackoverflow.com/questions/4167425/custom-syntax-highlighting-in-vim
au BufRead,BufNewFile *.log hi logheader guifg=navy ctermfg=blue term=bold cterm=bold gui=bold
" Matches lines starting with @ and ending in M (see log entry format below)
au BufRead,BufNewFile *.log syn match logheader /^@.*M$/

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plugins are found under .vim/config/pluginname.vim

runtime! config/**/*.vim
