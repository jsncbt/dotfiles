" Use <leader>t to open ctrlp
let g:ctrlp_map = '<leader>t'
" Ignore these directories
set wildignore+=*/build/**
set wildignore+=*/target/**
set wildignore+=*/bin/**

" ctrl p search buffer shall be leader b
nnoremap <leader>b :CtrlPBuffer<CR>

" disable caching
let g:ctrlp_use_caching=0
