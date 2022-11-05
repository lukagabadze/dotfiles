" general
set tabstop=2
set shiftwidth=2
set expandtab
set clipboard=unnamedplus
set autoread
set number relativenumber
set encoding=UTF-8

" keybindings
nnoremap j gj
nnoremap k gk
noremap <C-j> j
noremap <C-k> k

" tab switching
nnoremap <M-1> :tabn 1<CR>
nnoremap <M-2> :tabn 2<CR>
nnoremap <M-3> :tabn 3<CR>
nnoremap <M-4> :tabn 4<CR>
nnoremap <M-5> :tabn 5<CR>
nnoremap <M-6> :tabn 6<CR>
nnoremap <M-7> :tabn 7<CR>
nnoremap <M-8> :tabn 8<CR>
nnoremap <M-9> :tabn 9<CR>

" saves/restores cursor position
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif
endif
