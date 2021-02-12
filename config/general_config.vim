" ===
" === System
" ===
set nocompatible
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
set mouse=a
set encoding=utf-8

set clipboard=unnamed

" Prevent incorrect backgroung rendering 防止不正确的背景渲染
" simpleterminal色彩支持
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" ===
" === Main code display
" ===
set number  " 显示行号
set relativenumber  " 相对行号
set ruler
set cursorline  " 突出显示选中的字符所在行
syntax enable
syntax on   " 语法高亮

" ===
" === Editor behavior
" ===
" Better tab
let &t_ut=''    " 缩进设置为空格
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4

set list    " 空行末尾显示$
set listchars=tab:▸\ ,trail:▫   " 渲染tab和空格

set scrolloff=5     " 滚动屏幕留下几行

" Prevent auto line split 防止自动行拆分
set wrap    " 自动换行
set tw=0

set indentexpr=

" Better backspace 跨行退格
set backspace=indent,eol,start

" 开启代码折叠
set foldmethod=indent
set foldlevel=99

" 不同模式不同光标样式
let &t_SI = "\<Esc>]50;CursorShape=1\x7"
let &t_SR = "\<Esc>]50;CursorShape=2\x7"
let &t_EI = "\<Esc>]50;CursorShape=0\x7"

" ===
" === Window behaviors
" ===
set splitright
set splitbelow

" ===
" === Status/command bar
" ===
set laststatus=2    " 永远保留命令行
set autochdir
set showcmd     " 右下角显示输入命令
set formatoptions-=tc

" Show command autocomplete
set wildignore=log/**,node_modules/**,target/**,tmp/**,*.rbc
set wildmenu    " 输入命令时tab显示提示
set wildmode=longest,list,full

" Searching options 智能查找，高亮显示结果
set hlsearch
exec "nohlsearch"
set incsearch
set ignorecase
set smartcase

" ===
" === Restore Cursor Position 重新打开文件后恢复光标位置
" ===
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif