"""""""""""""""""""""""""""""""""""""""""""""""
" General settings
"""""""""""""""""""""""""""""""""""""""""""""""

" Show ruler
set ru                      " 打开状态栏标尺显示行号、列号、百分比

" Dynamic title
set title

" Set backspace
set backspace=indent,eol,start  


" Display line number
set nu

" Set non-linewise display
set display=lastline

" Disable VI compatible mode
set nocp

" Auto change current directory
set autochdir

" Use absolute paths in sessions
set sessionoptions-=curdir

" Lines folding
set foldenable
set foldnestmax=1
set foldmethod=syntax

" %跳转，缺省为 "(:),{:},[:]"形成配对
set matchpairs+=<:>     

" 显示括号配对情况
set sm              

" 指定在选择文本时， 光标所在位置也属于被选中的范围
set selection=inclusive     


"""""""""""""""""""""""""""""""""""""""""""""""
" Fonts & Colors
"""""""""""""""""""""""""""""""""""""""""""""""
set background=dark
" Set colorscheme
"colorscheme desert
colo molokai
"colo blackboard

" Enable syntax highlight
syntax on


"""""""""""""""""""""""""""""""""""""""""""""""
" GVIM
"""""""""""""""""""""""""""""""""""""""""""""""

set guifont=Monaco\ 10
let g:molokai_original = 1

"""""""""""""""""""""""""""""""""""""""""""""""
" Backup
"""""""""""""""""""""""""""""""""""""""""""""""

" Turn backup on
set backup

" Set backup directory
set backupdir=$HOME/.vim/backup

" Keep more backups for one file
"autocmd BufWritePre * let &backupext = strftime(".%m-%d-%H-%M")



"""""""""""""""""""""""""""""""""""""""""""""""
" Show
"""""""""""""""""""""""""""""""""""""""""""""""

" Show ruler
set ruler

" Show status bar
"set laststatus=2 

" Turn on Wild menu
set wildmenu

" 如果打开，窗口的分割会把新窗口放到当前窗口之下
set splitbelow      

set selectmode=
set keymodel=               
set mousemodel=popup

" For gdbvim
"set noshowcmd


"""""""""""""""""""""""""""""""""""""""""""""""
" Tab & Indent
"""""""""""""""""""""""""""""""""""""""""""""""

" 打开普通文件类型的自动缩进
set ai

" 按一下 Backspace 删除 4 个空格
set smarttab        

" Use hard tabs
set sw=4                        " 自动缩进的时候， 缩进尺寸为 4 个空格
set ts=4                        " Tab 宽度为 4 个字符
set et                          " Tab 替换为空格，对于打开已有文件， 将已有 Tab 替换为空格用 :retab

" Break lines
set tw=78                       " 设置光标超过 78 列时候折行
set lbr                         " 不在单词中间断行
set fo+=mB                      " 断行支持东亚语言
set whichwrap=b,s,<,>,[,]       " 按键开启到头后自动折向下一行

" Config C-indenting
set cin                         "打开 C/C++ 风格的自动缩进
set cino=:0g0t0(sus             "设定 C/C++ 风格自动缩进的选项


" Enable filetype plugin
filetype plugin indent on

" set textwidth for mail
autocmd Filetype mail set textwidth=72

" Use soft tabs for python
autocmd Filetype python set et sta ts=4 sw=4


"粘贴乱版问题
":set paste关闭所有自动缩进粘贴完毕后再输入:set nopaste 


"""""""""""""""""""""""""""""""""""""""""""""""
" Search
"""""""""""""""""""""""""""""""""""""""""""""""

" Enable magic matching
set magic

" Show matching bracets
set showmatch

" Highlight search things
set hlsearch

" Ignore case when searching
set smartcase
set ignorecase

" Incremental match when searching
set incsearch


"""""""""""""""""""""""""""""""""""""""""""""""
" Encoding
"""""""""""""""""""""""""""""""""""""""""""""""

" Set fileencodings
set fileencodings=ucs-bom,utf-8,gbk,big5
 

set ambiwidth=double    "防止特殊符号无法显示


"""""""""""""""""""""""""""""""""""""""""""""""
" Spell
"""""""""""""""""""""""""""""""""""""""""""""""
set spell spelllang=en



"""""""""""""""""""""""""""""""""""""""""""""""
" Plugins
"""""""""""""""""""""""""""""""""""""""""""""""

" Use my own cscope mappings
let autocscope_menus=0

" Auto change the root directory
let NERDTreeChDirMode=2

" CTags
"""""""""""""""""""""""""""""""""""""""""""""""

" Auto finding
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


" Cscope
"""""""""""""""""""""""""""""""""""""""""""""""

" Use both cscope and ctag
set cscopetag

" Show msg when cscope db added
set cscopeverbose

" Use tags for definition search first
set cscopetagorder=1

" Use quickfix window to show cscope results
set cscopequickfix=s-,g-,d-,c-,t-,e-,f-,i-

" Viki
"""""""""""""""""""""""""""""""""""""""""""""""

" Filetypes
autocmd! BufRead,BufNewFile $HOME/viki/* set ft=viki"
au BufRead,BufNewFile *.viki set ft=viki

" Protocols for Viki
let g:vikiOpenUrlWith_http = "silent !firefox %{URL}"
let g:vikiOpenUrlWith_mailto = "silent !alpine %{URL}"

" Intervikis
"let g:viki_intervikis['WIKI']  = '[$HOME."/viki/", ".viki"]'
"let g:viki_intervikis['NOTES'] = '[$HOME."/viki/Notes", ".otl"]'

" xmledit
autocmd BufNewFile,BufRead *.xml source ~/.vim/ftplugin/xml.vim
autocmd BufNewFile,BufRead *.html source ~/.vim/ftplugin/xml.vim

"""""""""""""""""""""""""""""""""""""""""""""""
" Mappings
"""""""""""""""""""""""""""""""""""""""""""""""

" To save, ctrl-s
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

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

" Cscope mappings
nnoremap <C-w>\ :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>s :scs find s <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>g :scs find g <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>d :scs find d <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>c :scs find c <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>t :scs find t <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>e :scs find e <C-R>=expand("<cword>")<CR><CR>
nnoremap <C-\>f :scs find f <C-R>=expand("<cfile>")<CR><CR>
nnoremap <C-\>i :scs find i ^<C-R>=expand("<cfile>")<CR>$<CR>

" Set Up and Down non-linewise
noremap <Up> gk
noremap <Down> gj

" Toggle Tlist
nnoremap <silent> <F2> :TlistToggle<CR>:TlistUpdate<CR>

" Grep search tools
nnoremap <F3> :Rgrep<CR>

" Paste toggle
set pastetoggle=<F4>

" Save & Make
nnoremap <F5> :w<CR>:make!<CR>
nnoremap <F6> :w<CR>:make! %< CC=gcc CFLAGS="-Wall -g -O2"<CR>:!./%<<CR>

" Quickfix window
nnoremap <silent> <F7> :botright copen<CR>
nnoremap <silent> <F8> :cclose<CR>

" NERDTreeToggle
nnoremap <silent> <F9> :NERDTreeToggle<CR>

" Toggle display line number
nnoremap <silent> <F10> :set number!<CR>

" Use <space> to toggle fold
nnoremap <silent> <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>

" Use xsel to access the X clipboard
if $DISPLAY != '' && executable('xsel')
    nnoremap <silent> "*y :'[,']w !xsel -i -p -l /dev/null<CR>
    nnoremap <silent> "*p :r!xsel -p<CR>
    nnoremap <silent> "+y :'[,']w !xsel -i -b -l /dev/null<CR>
    nnoremap <silent> "+p :r!xsel -b<CR>
endif
