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