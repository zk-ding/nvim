" ===
" === Auto load for first time uses
" === 首次使用时，自动加载Vim-PLug插件管理器
" ===

if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
				\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" ===
" === Install Plugins with Vim-Plug
" ===

call plug#begin('~/.config/nvim/plugged')

" Pretty Dress 美化
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'connorholyday/vim-snazzy'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'

" Search 搜索
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File navigation 文件树导航
Plug 'preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" 撤销更改功能
Plug 'mbbill/undotree'

" Taglist 标记列表
Plug 'liuchengxu/vista.vim'

" autoformat 自动格式化
" Plug 'google/vim-maktaba'
" Plug 'google/vim-codefmt'
" Plug 'Chiel92/vim-autoformat'

" Error checking 错误检查
" Plug 'dense-analysis/ale'

" Auto Complete 自动补全
Plug 'neoclide/coc.nvim', { 'branch': 'release'}

" Snippits 代码片段
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" Markdown 开箱即用，无需配置
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install_sync() }, 'for' :['markdown', 'vim-plug'] }
Plug 'dhruvasagar/vim-table-mode', { 'on': 'TableModeToggle' }

" Editor enhancement 编辑增强
Plug 'frazrepo/vim-rainbow'		" 彩色括号
Plug 'jiangmiao/auto-pairs'		" 自动成对括号
Plug 'tpope/vim-surround'		" 快捷修改包围
Plug 'gcmt/wildfire.vim'		" Enter快速选择

call plug#end()