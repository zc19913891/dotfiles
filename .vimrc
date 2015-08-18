" Vundle Settings
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!

Bundle 'gmarik/vundle'

" My Bundles:

" emmet
Bundle 'mattn/emmet-vim'

Bundle 'Lokaltog/vim-powerline'

" supertab
Bundle 'ervandew/supertab'

" 快速注释
" count \ c c|u
Bundle 'scrooloose/nerdcommenter'

" 快速移动
" s
" ff
" fw
" /
Bundle 'Lokaltog/vim-easymotion'

" git 状态
Bundle 'airblade/vim-gitgutter'

" 静态分析
Bundle 'scrooloose/syntastic'

" 自动补全
Bundle 'Raimondi/delimitMate'

" ack
" <C-a>
" Bundle 'mileszs/ack.vim'
Bundle 'rking/ag.vim'

" 括号快速高亮
Bundle 'kien/rainbow_parentheses.vim'

" 自动左右补全
" cs o n
" ds o
" yss n
" ysiw n
Bundle 'tpope/vim-surround'

" vim-commentary
" Bundle 'tpope/vim-commentary'

" emmet-vim
" Bundle 'mattn/emmet-vim'

" neocomplcache
Bundle 'Shougo/neocomplcache.vim'

Bundle 'majutsushi/tagbar'

" Multiple
Bundle 'terryma/vim-multiple-cursors'

" Ctrlp
Bundle 'kien/ctrlp.vim'

" nerdtree
Bundle 'scrooloose/nerdtree'

Bundle 'aceofall/gtags.vim'

Bundle 'vim-scripts/taglist.vim'

" solarized
" Bundle 'altercation/vim-colors-solarized'

Bundle 'zenorocha/dracula-theme', {'rtp': 'vim/'}

Bundle 'kchmck/vim-coffee-script'

Bundle 'elzr/vim-json'

Bundle 'pangloss/vim-javascript'

Bundle 'mxw/vim-jsx'

Bundle 'plasticboy/vim-markdown'

Bundle 'vim-scripts/vim-stylus'

Bundle 'vim-scripts/vim-less'

Bundle 'MarcWeber/vim-addon-mw-utils'

Bundle 'tomtom/tlib_vim'

Bundle 'garbas/vim-snipmate'

Bundle 'honza/vim-snippets'

Bundle 'vim-scripts/vimwiki'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

" Set Powserline
set nocompatible   " Disable vi-compatibility
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
" let g:Powerline_symbols = 'fancy'

" tab_to_space
set ai
set si
set showmatch
set ts=4
set shiftwidth=4
set expandtab
set autoindent

let &t_Co=256
syntax enable

colorscheme Dracula

" neocomplcache auto completion
let g:neocomplcache_enable_at_startup = 1
let g:neocomplcache_enable_auto_select = 1

" Set line number
set nu
" set rnu

" Auto indent
set autoindent

" Set syntax highlighting
syntax on

" search highlight
set hlsearch
" key map
map <F10> :NERDTreeToggle<CR>
map <Space> <C-F>
map <C-c>,<C-p> :CtrlP<CR>

" emmet settings
let g:user_emmet_install_global = 0
let g:user_emmet_leader_key = '<C-e>'
autocmd FileType html,css,sass,scss,stylus,tpl,smarty EmmetInstall

" snippet settings
autocmd BufNewFile,BufRead *.tpl set filetype=html

let g:syntastic_check_on_open=1
let g:syntastic_check_on_wq=1

let g:EasyMotion_leader_key = 'f'
nmap s <Plug>(easymotion-s2)
map  / <Plug>(easymotion-sn)

" These `n` & `N` mappings are options. You do not have to map `n` & `N` to
" EasyMotion.
" Without these mappings, `n` & `N` works fine. (These mappings just provide
" different highlight method and have some other features )
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

let Tlist_Use_Right_Window=1
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow = 1

" map <C-a> :Ack<CR>
map <C-g> :Ag<CR>

" Ctrlp setting
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
set wildignore+=*\\tmp\\*,*.swp,*.zip,*.exe  " Windows

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/](node_modules|incremental)|(\.(git|hg|svn|sass|cache|sass-cache))$',
  \ 'file': '\v\.(exe|so|dll|log|jpg|png|jpeg|gif|swf)$',
  \ 'link': 'some_bad_symbolic_links',
  \ }

" https://github.com/kien/ctrlp.vim/blob/master/doc/ctrlp.txt
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_height = 25
" nerdtree
" autocmd vimenter * NERDTree

let Tlist_Auto_Open=1
let Tlist_Show_One_File=1     "不同时显示多个文件的tag，只显示当前文件的    
let Tlist_Exit_OnlyWindow=1   "如果taglist窗口是最后一个窗口，则退出vim   
let Tlist_Ctags_Cmd="/usr/local/bin/ctags" "将taglist与ctags关联

set cscopetag
set cscopeprg='gtags-cscope'

let GtagsCscope_Auto_Load = 1
let CtagsCscope_Auto_Map = 1
let GtagsCscope_Quiet = 1

if g:CtagsCscope_Auto_Map == 1
    :nmap <C-\>0 :cs find 0 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-\>1 :cs find 1 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-\>2 :cs find 2 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-\>3 :cs find 3 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-\>f :cs find f
    " Using 'CTRL-spacebar', the result is displayed in new horizontal window.
    :nmap <C-@>0 :scs find 0 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@>1 :scs find 1 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@>2 :scs find 2 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@>3 :scs find 3 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@>f :scs find f
    " Hitting CTRL-space *twice*, the result is displayed in new vertical window.
    :nmap <C-@><C-@>0 :vert scs find 0 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@><C-@>1 :vert scs find 1 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@><C-@>2 :vert scs find 2 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@><C-@>3 :vert scs find 3 <C-R>=expand("<cword>")<CR><CR>
    :nmap <C-@><C-@>f :vert scs find f
    ":nmap <C-\><C-n> :cn<CR>
    ":nmap <C-\><C-p> :cp<CR>
endif

set pastetoggle=<F9>

" set mouse=a  " always use mouse "

" 记住上次编辑位置
:au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal g'\"" | endif
