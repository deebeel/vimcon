set nocompatible
syntax on
set backspace=indent,eol,start
set nobackup		" do not keep a backup file, use versions instead
set noswapfile          " disable swap files
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set number		" show line numbers
set hidden 		" switch buffers without saving the current
set expandtab 		" replace tabs with spaces
set wrap		" wrap long lines
set linebreak		" wrap lines by words
set hlsearch		" highlingh search occurences
set ignorecase          " search without case matching
set incsearch		" do incremental searching
set completeopt-=preview
set smartcase           " case sencitive search only for the mached text
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
filetype off  
filetype plugin indent on
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

" Javascrip setup
Plugin 'pangloss/vim-javascript'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'marijnh/tern_for_vim'
" General 
Plugin 'scrooloose/nerdtree.git'
Plugin 'SirVer/ultisnips'
Plugin 'powerline/powerline'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'scrooloose/syntastic'
Plugin 'Valloric/YouCompleteMe'
Plugin 'L9'
Plugin 'FuzzyFinder'

call vundle#end()

let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:UltiSnipsSnippetsDir="~/.vim/UltiSnips"
let g:UltiSnipsListSnippets="<c-p>"
let g:syntastic_check_on_open=1
let g:ycm_add_preview_to_completeopt=0
let g:ycm_confirm_extra_conf=0
let NERDTreeShowHidden=1

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_javascript_checkers = ['eslint']
nnoremap <silent> <Space> :nohl<Bar>:echo<CR>
nmap <Leader>p :FufFile<CR>
nmap <C-n> :NERDTreeToggle<CR>
nmap <C-S-p> :FufBuffer<CR>
vmap <Tab> :call UltiSnips#SaveLastVisualSelection()<CR>gvs
