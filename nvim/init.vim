call plug#begin('~/.vim/plugged')

Plug 'joshdick/onedark.vim'
Plug 'kjwon15/vim-transparent'

Plug 'pangloss/vim-javascript'
Plug 'maxmellon/vim-jsx-pretty'

Plug 'preservim/nerdtree'
Plug 'jistr/vim-nerdtree-tabs'

Plug 'ctrlpvim/ctrlp.vim'

Plug 'christoomey/vim-tmux-navigator'

call plug#end()

colorscheme onedark

" set notermguicolors

" USE TRUE COLORS
"if (empty($TMUX))
"  if (has("nvim"))
"    let $NVIM_TUI_ENABLE_TRUE_COLOR=1
"  endif
"  if (has("termguicolors"))
"    set termguicolors
"  endif
"endif


" set relative line numbers
:set relativenumber


" set NerdTree toggle to ctrl+n
nmap <C-n> :NERDTreeTabsToggle<CR>

" go to tab number
nnoremap <A-1> 1gt
nnoremap <A-2> 2gt
nnoremap <A-3> 3gt
nnoremap <A-4> 4gt
nnoremap <A-5> 5gt
nnoremap <A-6> 6gt
nnoremap <A-7> 7gt
nnoremap <A-8> 8gt
nnoremap <A-9> 9gt



" sets default clipboard to the system clipboard
set clipboard=unnamedplus

" sets tab size to 4 spaces
set tabstop=4
set softtabstop=4
set shiftwidth=4


autocmd VimEnter * NERDTreeTabsOpen


" newtab with ctrl+t
nnoremap <silent> <C-t> :tabnew <CR>
" tabclose with ctrl+w
nnoremap <silent> <C-w> :tabclose <CR>
