" ===
" === Basic Mappings
" ===

" Set <LEADER> as <SPACE>
let mapleader=" "

" Save & quit
map W :w<CR>
map Q :q<CR>

vnoremap <LEADER>y "+y   " 复制粘贴到剪贴板

" Search
" map <LEADER><CR> :nohlsearch<CR>

" Duplicate words
map <LEADER>fd /\(\<\w\+\>\)\_s*\1

" H/J/K/L keys for 5 times h/j/k/l (faster navigation)
noremap H 5h
noremap J 5j
noremap K 5k
noremap L 5l

" Disabling the default s key
noremap s <nop>

" Reload configuration  刷新配置文件
map R :source $MYVIMRC<CR>

" ===
" === Other useful stuff
" ===

" Press space twice to jump to the next '<++>' and edit it
map <LEADER><LEADER> <Esc>/<++><CR>:nohlsearch<CR>c4l

" Spelling Check with <space>sc 拼写检查
map <LEADER>sc :set spell!<CR>

" ===
" === Window management
" ===

" split the screens to up (horizontal), down (horizontal), left (vertical), right (vertical)
" 分屏
map sk :set nosplitbelow<CR>:split<CR>:set splitbelow<CR>
map sj :set splitbelow<CR>:split<CR>
map sh :set nosplitright<CR>:vsplit<CR>:set splitright<CR>
map sl :set splitright<CR>:vsplit<CR>
" 切换左右/上下分屏
map sv <C-w>t<C-w>H
map si <C-w>t<C-w>K

" Use <space> + new arrow keys for moving the cursor around windows
" 移动光标 <C-w> = Ctrl + w
map <LEADER>h <C-w>h
map <LEADER>j <C-w>j
nmap <silent> <LEADER>k <Plug>(coc-diagnostic-next)
map <LEADER>k <C-w>k
map <LEADER>l <C-w>l

" Resize splits with arrow keys
" 调整分屏大小
map <up> :res +5<CR>
map <down> :res -5<CR>
map <left> :vertical resize-5<CR>
map <right> :vertical resize+5<CR>

" Use t + new arrow keys for creating and moving the tabe
" 打开标签页
map tn :tabe<CR>
map tc :tabc<CR>
" 切换标签页
map th :-tabnext<CR>
map tl :+tabnext<CR>

" Use b + new arrow keys for creating and moving the buffer
" 新建缓冲区
map bb :e<space>
" 切换缓冲区
map bh :bprev<CR>
map bl :bnext<CR>
map bf :bfirst<CR>
map bd :bd<CR>

" figlet
map tf :r !figlet 