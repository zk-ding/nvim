"  __  __        __     _____ __  __ ____   ____
" |  \/  |_   _  \ \   / /_ _|  \/  |  _ \ / ___|
" | |\/| | | | |  \ \ / / | || |\/| | |_) | |
" | |  | | |_| |   \ V /  | || |  | |  _ <| |___
" |_|  |_|\__, |    \_/  |___|_|  |_|_| \_\\____|
"         |___/

" Author: @JzkYcc
" Github: @JzkYcc

scriptencoding utf-8

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
" === 模块化加载配置
" ===

let s:script_path = expand('<sfile>:p:h')

let s:sourceList = [
      \ 'general_config',
      \ 'key_bindings',
      \ 'plug_list',
	    \ 'plug_settings',
      \]

for s:item in s:sourceList
  exec 'source ' . s:script_path . '/config/' . s:item . '.vim'
endfor

" Free memory
unlet s:script_path
unlet s:sourceList