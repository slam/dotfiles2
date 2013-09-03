function! GetVisual()
  let reg_save = getreg('"')
  let regtype_save = getregtype('"')
  let cb_save = &clipboard
  set clipboard&
  normal! ""gvy
  let selection = getreg('"')
  call setreg('"', reg_save, regtype_save)
  let &clipboard = cb_save
  return selection
endfunction

"git grep the current word
nnoremap <silent> <leader>gg :GitGrep <cword><CR>

"git grep visual selection
vnoremap <leader>gg :<C-U>execute "GitGrep '" . GetVisual() . "'"<CR>

"git grep the current word
nnoremap <silent> <leader>ga :Ag! <cword><CR>

"git grep visual selection
vnoremap <leader>ga :<C-U>execute "Ag! '" . GetVisual() . "'"<CR>

" Stolen from Steve Losh vimrc: https://bitbucket.org/sjl/dotfiles/src/tip/vim/.vimrc
" Open a Quickfix window for the last search.
nnoremap <silent> <leader>q/ :execute 'vimgrep /'.@/.'/g %'<CR>:copen<CR>

" Ag for the last search.
nnoremap <silent> <leader>qa/ :execute "Ag! '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>

" GitGrep the last search (my own invention)
nnoremap <silent> <leader>qg/ :execute "GitGrep '" . substitute(substitute(substitute(@/, "\\\\<", "\\\\b", ""), "\\\\>", "\\\\b", ""), "\\\\v", "", "") . "'"<CR>
