set runtimepath^=~/.vim/bundle/ctrlp.vim
set shiftwidth=2
set noswapfile
set tabstop=2
set expandtab
set autoindent
set cindent
set smartindent
set foldmethod=indent
set hidden

call plug#begin()
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'https://github.com/adelarsq/vim-matchit'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'leafoftree/vim-vue-plugin'
Plug 'vim-scripts/groovy.vim'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-fugitive'
call plug#end()

autocmd BufNewFile,BufRead * setlocal formatoptions-=cro
autocmd BufRead * normal! zR

command! -bar -bang Q quit!
cabbrev q quit!

let g:netrw_localrmdir="rm -rf"
let g:vim_vue_plugin_use_typescript="1"
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|class\|build\|dist'

hi! link VertSplit Ignore
hi! link EndOfBuffer Ignore
set fillchars+=eob:\ " The trailing space is important
