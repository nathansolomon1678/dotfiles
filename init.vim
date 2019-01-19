" customizing settings
set background=dark
syntax on

" move your favorite colorscheme to the end of this list
colo elflord
source ~/.config/nvim/colors/cobalt.vim " https://github.com/gkjgh/cobalt
source ~/.config/nvim/colors/landscape.vim " https://github.com/itchyny/landscape.vim

" whitespace
set tabstop=2|set shiftwidth=2|set expandtab
" in python and BUILD files, indent with 4 spaces
autocmd FileType python set tabstop=4|set shiftwidth=4|set expandtab
if (expand('%:t:r')=='BUILD')
  set tabstop=4|set shiftwidth=4|set expandtab
endif

" autocomplete settings
set wildmenu
set wildmode=longest:full,full

set number
set magic

set termguicolors
autocmd BufWritePre * %s/\s\+$//e
set noshowmode
set noswapfile
filetype on
set conceallevel=0
set virtualedit=
set wildmenu
set laststatus=2
set wrap linebreak nolist
set wildmode=full
set autoread
set undofile
set spell
