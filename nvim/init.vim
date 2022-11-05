call plug#begin()

Plug 'morhetz/gruvbox'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'drewtempelmeyer/palenight.vim'

Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'



Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'christoomey/vim-tmux-navigator'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'ryanoasis/vim-devicons'

Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdcommenter'
Plug 'airblade/vim-gitgutter'

Plug 'alvan/vim-closetag'
Plug 'tpope/vim-haml'
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx', 'typescript', 'typescript.tsx'] }
Plug 'ekalinin/Dockerfile.vim'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

Plug 'mlaursen/vim-react-snippets'

Plug 'sheerun/vim-polyglot' " syntax highlighting
Plug 'jiangmiao/auto-pairs' " pairs without using coc

call plug#end()

" general
set tabstop=2
set shiftwidth=2
set clipboard=unnamedplus
set autoread
set number relativenumber
set encoding=UTF-8
nnoremap j gj
nnoremap k gk
noremap <C-j> j
noremap <C-k> k
nnoremap <M-1> :tabn 1<CR>
nnoremap <M-2> :tabn 2<CR>
nnoremap <M-3> :tabn 3<CR>
nnoremap <M-4> :tabn 4<CR>
nnoremap <M-5> :tabn 5<CR>
nnoremap <M-6> :tabn 6<CR>
nnoremap <M-7> :tabn 7<CR>
nnoremap <M-8> :tabn 8<CR>
nnoremap <M-9> :tabn 9<CR>
if v:version >= 700
  au BufLeave * let b:winview = winsaveview()  " saves cursor pos
  au BufEnter * if(exists('b:winview')) | call winrestview(b:winview) | endif " restores cursor pos
endif

" colors
:colorscheme gruvbox
":colorscheme palenight
let g:airline_theme='gruvbox'

" coc config
let g:coc_global_extensions = [
    \ 'coc-snippets',
    \ 'coc-tsserver',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-json',
    \ 'coc-css',
		\ 'coc-docker',
		\ 'coc-yaml',
		\ 'coc-tailwindcss',
		\ 'coc-git',
		\ 'coc-pyright',
		\ 'coc-jedi']

nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gv :vsp<CR><Plug>(coc-definition)<C-W>L

inoremap <silent><expr> <c-space> coc#refresh()
" coc sass
autocmd FileType scss setl iskeyword+=@-@

" nerdtree
let g:NERDTreeIgnore = ['^node_modules&']
let NERDTreeShowHidden=1
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>



" automatic NERDTree mirroring on tab switching
" when having just one window in the tab
function MirrorNerdTreeIfOneWindow()
  if winnr("$") < 2
    NERDTreeMirror

    " hack to move the focus from the NERDTree to the main window
    wincmd p
    wincmd l
  endif
endfunction

"autocmd GuiEnter * silent NERDTree
"autocmd VimEnter * silent NERDTree
autocmd TabEnter * silent exe MirrorNerdTreeIfOneWindow()


let g:NERDTreeGitStatusUseNerdFonts = 1 " you should install nerdfonts by yourself. default: 0


" ctrl p config
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_prompt_mappings = {
    \ 'AcceptSelection("e")': ['<2-LeftMouse>'],
    \ 'AcceptSelection("t")': ['<cr>'],
    \ }

" nerdcommenter config
" noremap <C-_> :help<CR>


" close tag config
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.jsx,*.tsx'
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }