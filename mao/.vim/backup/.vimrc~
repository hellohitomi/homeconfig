" Basics {
    set nocompatible
    set noexrc " don't use local version of .(g)vimrc, .exrc
    set background=dark
    set cpoptions=aABceFsmq
    "             |||||||||
    "             ||||||||+-- When joining lines,leave the cursor between joined lines
    "             |||||||+-- When a new match is created(showmatch) pause for .5
    "             ||||||+-- Set buffer options when entering the buffer
    "             |||||+-- :write updates current file name
    "             ||||+-- Automatically add <CR> to the last line when use :@r
    "             |||+-- Searching continues at the end of the match at the cursor position
    "             ||+-- A backslash has no special meaning in mappings 
    "             |+-- :write updates alternative file name
    "             +-- :read updates alternative file name
    syntax on
    set encoding=utf-8
    set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
    if v:lang =~? '^\(zh\)\|\(ja\)\|\(ko\)'
        set ambiwidth=double
    endif
    set spell spelllang=en
" }

" General {
    filetype plugin indent on " load filetype plugins/indent settings
    set history=700 "Sets how many lines of history VIM has to remember
    set autoread " Set to auto read when file is changed from the outside
    set autochdir " always switch to the current file directory
    set backspace=indent,eol,start " make backspace a more flexible
    set backup
    set backupdir=$HOME/.vim/backup
    "autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M") " Keep more backups for one file
    set clipboard+=unnamed " share windows clipboard
    set directory=~/.vim/tmp " directory to place swap files in
    set fileformats=unix,dos,mac " support all three, in this order
    set hidden " you can change buffers without saving
    " (XXX: #VIM/tpope warns the line below could break things)
    set iskeyword+=_,$,@,%,# " none of these are word dividers
    set mouse=a " use mouse everywhere
    set mousemodel=popup " 鼠标右键功能
    set noerrorbells " don't make noise
    set wildmenu " turn on command line completion wild style
    set wildignore=*.dll,*.o,*.obj,*.bak,*.exe,*.pyc,*.jpg,*.gif,*.png " ignore these list file extensions
    set wildmode=list:longest "turn on wild mode huge list
    set whichwrap=b,s,h,l,<,>,~,[,] " everything wraps
    "             | | | | | | | | |
    "             | | | | | | | | +-- "]" Insert and Replace
    "             | | | | | | | +-- "[" Insert and Replace
    "             | | | | | | +-- "~" Normal
    "             | | | | | +-- <Right> Normal and Visual
    "             | | | | +-- <Left> Normal and Visual
    "             | | | +-- "l" Normal and Visual (not recommended)
    "             | | +-- "h" Normal and Visual (not recommended)
    "             | +-- <Space> Normal and Visual
    "             +-- <BS> Normal and Visual
" }

" Vim UI {
    "set cursorcolumn " highlight the current column
    "set cursorline " highlight current line
    set nohlsearch " do not highlight searched for phrases
    set incsearch " highlight as you type you search phrase
    set number " turn on line numbers
    set numberwidth=5 " We are good up to 99999 lines
    set laststatus=2 " always show the status line
    set ruler " Always show current positions along the bottom
    set lazyredraw " do not redraw while running macros
    set linespace=0 " do not insert any extra pixel lines betweens rows
    set list " 显示 tabs,to ensure we get them out of my files
    set listchars=tab:>-,trail:- " tabs和拖尾显示为 
    set showmatch " show matching brackets
    set matchpairs+=<:> " 增加符号匹配
    set matchtime=5 "显示匹配的时间,how many tenths of a second to blink matching brackets for
    set nostartofline " leave my cursor where it was
    set novisualbell " don't blink
    set report=0 " tell us when anything is changed via :...
    set scrolloff=10 " 光标上下两侧保留10行
    set sidescrolloff=10 " 光标左右两侧保留的最少屏幕列数,Keep 5 lines at the size
    set shortmess=aOstT " shortens messages to avoid 'press a key' prompt
    set showcmd " show the command being typed
    set title " Dyncmic title
    set splitbelow " 拆分窗口置于下方
    set statusline=%F%m%r%h%w[%L][%{&ff}]%y[%p%%][%04l,%04v]
    "              | | | | |  |   |      |  |     |    |
    "              | | | | |  |   |      |  |     |    + current column
    "              | | | | |  |   |      |  |     + current line
    "              | | | | |  |   |      |  + current % into file
    "              | | | | |  |   |      + current syntax in square brackets
    "              | | | | |  |   + current fileformat
    "              | | | | |  + number of lines
    "              | | | | + preview flag in square brackets
    "              | | | + help flag in square brackets
    "              | | + readonly flag in square brackets
    "              | + modified flag in square brackets
    "              + full path to file in the buffer
" }

" Text Formatting/Layout {
    set completeopt= " don't use a pop up menu for completions
    set formatoptions=rq " Automatically insert comment leader on return,and let gq format comment
    set ignorecase " case insensitive by default
    set infercase " case inferred by default
    set nowrap " 不拆行,do not wrap line
    set shiftround " when at 3 spaces, and I hit > ... go to 4, not 5
    set smartcase " if there are caps, go case-sensitive
    set shiftwidth=4 " auto-indent amount when using cindent, >>, << and stuff like that
    set softtabstop=4 " when hitting tab or backspace, how many spaces should a tab be (see expandtab)
    set tabstop=4 " real tabs should be 8, and they will show with set list on
    set expandtab " no real tabs please!
    set autoindent " 缩进了某一行，并且后续行也要缩进到同一级别
    set smartindent " 在一个新的语句块之后的行自动缩进到下一个级别
" }

" Folding {
    set foldenable " Turn on folding
    set foldmarker={,} " Fold C style code (only use this as default if you use a high foldlevel)
    set foldmethod=marker " Fold on the marker
    set foldlevel=100 " Don't autofold anything (but I can still fold manually)
    set foldopen=block,hor,mark,percent,quickfix,search,tag " what movements open folds

    function! SimpleFoldText() " {
        return getline(v:foldstart).' '
    endfunction " }
    set foldtext=SimpleFoldText() " Custom fold text function " (cleaner than default)
" }

" GUI Settings {
if has("gui_running")
    colorscheme molokai
    set guifont=Monaco\ 10
    set guioptions=ce
    "              ||
    "              |+-- use simple dialogs rather than pop-ups
    "              + use GUI tabs,not console style tabs
    set lines=55
    set mousehide
else
    colorscheme desert256
endif
" }

" Plugin Settings {

    " FencView  http://www.vim.org/scripts/script.php?script_id=1708
    " {
        " 关闭Fencview自动检测
        let g:fencview_autodetect=0
    " }

    " NERD_tree http://www.vim.org/scripts/script.php?script_id=1658
    " {
        let NERDTreeChDirMode=2
    " }

    " Taglist http://www.vim.org/scripts/script.php?script_id=273
    " {
    "   " Auto finding
        set tags=tags;
        " Sort by name
        let Tlist_Sort_Type="name"
        " Use right window
        let Tlist_Use_Right_Window=1
        " Enable auto update
        let Tlist_Auto_Update=1
        " Set compart format
        let Tlist_Compart_Format=1
        " Set exit by window
        let Tlist_Exit_OnlyWindow=1
        " Disable fold column
        let Tlist_Enable_Fold_Column=0

        let Tlist_File_Fold_Auto_Close=1
    " }

    " xmledit http://www.vim.org/scripts/script.php?script_id=301

    " ZenCoding http://www.vim.org/scripts/script.php?script_id=2981

" }

" Autocommands {
    autocmd! bufwritepost .vimrc source ~/.vimrc " When .vimrc save,reload it

    " Use soft tabs for python
    autocmd Filetype html set sts=2 ts=2 sw=2
" }

" Mappings {

    " Map F1-F12 {

        " Toggle Tlist
        nnoremap <silent> <F2> :TlistToggle<CR>:TlistUpdate<CR>

        " NERD_Tree
        nnoremap <silent> <F3> :NERDTreeToggle<CR>

        " BufExplorer
        map <silent> <F4> :BufExplorer<CR>

        " Fencview 显示编码
        map <silent> <F12> :FencView<CR>
    " }

    " Fast save, Ctrl-s to save
    nmap <c-s> :w<CR>
    imap <c-s> <Esc>:w<CR>a

    " To jump to the keyword help,Press K
    set keywordprg=:help

    " Tab navigation
    nnoremap tp :tabprevious<CR>
    nnoremap tn :tabnext<CR>
    nnoremap to :tabnew<CR>
    nnoremap tc :tabclose<CR>
    nnoremap gf <C-W>gf
    noremap <A-j> gT
    noremap <A-k> gt

    " Move among windows
    noremap <C-h> <C-W>h
    noremap <C-l> <C-W>l
    noremap <C-j> <C-W>j
    noremap <C-k> <C-W>k

    " Folding
    " 空格打开关闭折叠
    nnoremap <space> za

    " Set Up and Down non-linewise
    noremap <Up> gk
    noremap <Down> gj

" }
