runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
filetype plugin indent on

syntax on
set expandtab
set tabstop=2
set shiftwidth=2
set tags=./tags,tags;
" Mac backspace
set backspace=indent,eol,start
let g:CommandTWildIgnore='*/tmp/,*/.git'

" tree style preview window
let g:netrw_preview   = 1
let g:netrw_liststyle = 3
let g:netrw_winsize   = 30

nmap <C-_>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-Space>g :scs find g <C-R>=expand("<cword>")<CR><CR>
let g:rails_projections = {
  \ "app/models/concerns/*.rb": {
  \   "command": 'mconcern',
  \   "template":
  \     [ "concern :{camelcase|capitalize|colons} do", "end"],
  \   "test": [
  \     "test/models/concerns/{underscore}_test.rb"
  \   ],
  \   },
  \ "app/jobs/*.rb": {
  \   "command": 'job'
  \   },
  \ "app/channels/*.rb": {
  \   "command": 'channel'
  \   }
  \ }
