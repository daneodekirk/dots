call pathogen#infect()
call pathogen#helptags()
syntax on
filetype plugin indent on

"let mapleader=","

map <silent> <C-h> :hide<CR> 
map <silent> <C-N> :nohlsearch<CR>
map ,d :diffthis<CR>
map ,D :diffoff<CR>
map <C-l> "hy:%s/<C-r>h//gc<left><left><left>

" Fugitive 
map ,gs :Gstatus<CR>
map ,gc :Gcommit<CR>

"Coffeescript
map ,cc :CoffeeCompile<CR>
map ,ccw :CoffeeCompile watch vert<CR>
map ,ccwo :CoffeeCompile unwatch<CR>


" randomly choose another color scheme
map ,r :colorscheme random<CR>
map <leader>r :colorscheme<CR>

" Get .swp files centralized and out of my dropbox!
set dir=~/.vim-tmp 

"Disable MacVim toolbar
if has("gui_running")
    set guioptions=-t
endif

"Command-T
let g:CommandTAcceptSelectionVSplitMap='<S-CR>'

"set autochdir
set number
set ai!
set ic hls is
set hidden

set tabstop=2 softtabstop=2 shiftwidth=2 expandtab
au FileType python set tabstop=4 softtabstop=4 shiftwidth=4 expandtab

" Disable localized menus for now since only some items are translated (e.g.
" the entire MacVim menu is set up in a nib file which currently only is
" translated to English).
set langmenu=none

colorscheme random

" Zope/Plone
au BufNewFile,BufEnter *.zcml set filetype=xml

"Snipmate
autocmd FileType eruby set ft=eruby.eruby-rails.html
autocmd FileType python set ft=python.django 
autocmd FileType html set ft=html.css.javascript 
autocmd FileType html set ft=html.htmldjango.css.javascript 

" statusline
if has("statusline") 
    set statusline=
    set statusline+=%{fugitive#statusline()}
endif

"Show statusline
map ,s :set laststatus=2<CR>
