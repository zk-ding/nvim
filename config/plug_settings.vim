scriptencoding utf-8

let s:script_path = expand('<sfile>:p:h')

let s:sourceList = [
      \ 'coc.nvim',
      \ 'fzf',
      \ 'fzf.vim',
      \ 'markdown-preview.nvim',
      \ 'nerdtree-git-plugin',
      \ 'nerdtree',
      \ 'tagbar',
      \ 'ultisnips',
      \ 'vim-airline-themes',
      \ 'vim-airline',
      \ 'vim-devicons',
      \ 'vim-rainbow',
      \ 'vim-snazzy',
      \ 'vim-snippets',
      \ 'vim-startify',
      \ 'vim-surround',
      \ 'vim-table-mode',
      \ 'wildfire.vim',
      \]

for s:item in s:sourceList
  exec 'source ' . s:script_path . '/plugins/' . s:item . '.vim'
endfor

" Free memory
unlet s:script_path
unlet s:sourceList