call plug#begin()
Plug 'gkjgh/cobalt'
Plug 'SirVer/ultisnips'
call plug#end()

colo cobalt
set termguicolors

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'

set number
set mouse=a

set noswapfile
set wildmenu
set wildmode=full
set virtualedit=block

command Vimrc  execute "vsp ~/dotfiles/init.vim"
command Bashrc execute "vsp ~/dotfiles/bashrc"

" whitespace
set expandtab
set                         tabstop=2 | set shiftwidth=2
autocmd FileType python set tabstop=4 | set shiftwidth=4
