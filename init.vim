call plug#begin()
Plug 'gkjgh/cobalt'
Plug 'SirVer/ultisnips'
Plug 'lervag/vimtex'
Plug 'chrisbra/unicode.vim'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
call plug#end()

let g:deoplete#enable_at_startup = 1
call deoplete#custom#source('_', 'max_menu_width', 80)

colo cobalt
set termguicolors

let g:UltiSnipsEditSplit="context"
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
set tabstop=4
set shiftwidth=4
"autocmd FileType cpp set tabstop=2 | set shiftwidth=2
"autocmd FileType c   set tabstop=2 | set shiftwidth=2
"autocmd FileType cc  set tabstop=2 | set shiftwidth=2
"autocmd FileType h   set tabstop=2 | set shiftwidth=2

let g:tex_flavor='latex'
let g:vimtex_view_method = 'zathura'
let g:vimtex_quickfix_mode=0
set conceallevel=1
let g:tex_conceal='abdmg'
hi clear Conceal

function RefreshLatexPDF()
    :VimtexStop
    :VimtexCompile
    :call system('rm *.aux *.synctex.gz *.fdb_latexmk *.fls')
endfunction
silent !RefreshLatexPDF
autocmd BufWritePost *.tex silent call RefreshLatexPDF()
