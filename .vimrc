"#General 
syntax on
set number
set relativenumber
set guicursor=
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set nowrap
set showmatch
set smartcase
set autoindent
set incsearch
set scrolloff=10
set termguicolors
set noshowmode
set noswapfile
set nobackup
set cursorline

"#Installs Vim-Plug
if empty(glob('~/.vim/autoload/plug.vim'))
      silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
          \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
        autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
    endif


"#Plugins
call plug#begin('~/.vim/plugged')

Plug 'vim-airline/vim-airline'				"airline bar
Plug 'vim-airline/vim-airline-themes'		"airline themes
Plug 'ayu-theme/ayu-vim'					"colourscheme


call plug#end()

"#airline 
let g:airline_theme = 'ayu_dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1


"#colorscheme
set background=dark
let ayucolor="mirage"
colorscheme ayu

highlight LineNr guifg=#808080 
"highlight clear CursorLine
"highlight cursorlinenr guifg=bold
