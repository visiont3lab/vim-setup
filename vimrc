" Nice to have
syntax on
set number

" Show statusbar
set laststatus=2

set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" General vundle vim plugin
Plugin 'VundleVim/Vundle.vim'

" vim-airline https://github.com/vim-airline/vim-airline
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" vim-syntastic
Plugin 'vim-syntastic/syntastic'

" search vim plugin
Plugin 'kien/ctrlp.vim'

" tabs tree
Plugin 'jistr/vim-nerdtree-tabs'

" indentation python script
"Plugin 'vim-scripts/indentpython.vim'

" https://github.com/ycm-core/YouCompleteMe
" http://unixnme.blogspot.com/2017/03/how-to-install-youcompleteme-vim-plugin.html
" https://www.reddit.com/r/vim/comments/8xpxej/useful_video_on_how_to_install_youcompleteme_i/
Plugin 'Valloric/YouCompleteMe'
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Vim-plug Rigel theme https://github.com/Rigellute/rigel
Plugin 'Rigellute/rigel'

" Track the engine. https://github.com/SirVer/ultisnips
Plugin 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'

" Simply Fold pluin
Plugin 'tmhedberg/SimpylFold'

call vundle#end()            " required
filetype plugin indent on    " required


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<c-e>"
"let g:UltiSnipsJumpForwardTrigger="<c-p>"
"let g:UltiSnipsJumpBackwardTrigger="<c-n>"

" Enable copy paste
set clipboard=unnamed

" nerdtree ignore files
" Python vim https://realpython.com/vim-and-python-a-match-made-in-heaven/
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" vim airline enable
let g:airline#extensions#tabline#enabled = 1

" set color scheme
" enable 24bit true color
set termguicolors
syntax enable
colorscheme rigel

" You complete me addittions
let g:ycm_global_ycm_extra_conf = "~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py"
"let g:ycm_server_python_interpreter = '/usr/bin/python3'
"let g:ycm_autoclose_preview_window_after_completion=1

" Folding
" Enable folding https://github.com/tmhedberg/SimpylFold
set foldmethod=indent
"set foldmethod=syntax
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1

" Column cursor https://vi.stackexchange.com/questions/666/how-to-add-indentation-guides-lines
set cursorcolumn
set cursorline

" Run nerdtree on startup
map  <C-l> :tabn<CR>
map  <C-h> :tabp<CR>
let g:nerdtree_tabs_open_on_console_startup=1

" Tab setup
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.

set shiftwidth=4    " Indents will have a width of 4

set softtabstop=4   " Sets the number of columns for a TAB

set expandtab       " Expand TABs to spaces

" https://dougblack.io/words/a-good-vimrc.html
