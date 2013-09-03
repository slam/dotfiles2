" ========================================
" General vim sanity improvements
" ========================================
"

"Go to last edit location with ,.
nnoremap <leader>. '.

" ,q to toggle quickfix window (where you have stuff like GitGrep)
" ,oq to open it back up (rare)
nmap <silent> <leader>qc :cclose<CR>
nmap <silent> <leader>qo :copen<CR>

"Move back and forth through previous and next buffers
"with ,z and ,x
nnoremap <silent> <leader>z :bp<CR>
nnoremap <silent> <leader>x :bn<CR>

nnoremap <silent> <leader>d :bd<CR>
nnoremap <leader>e :e <C-R>=expand("%:p:h") . "/" <CR>

" ==============================
" Window/Tab/Split Manipulation
" ==============================
" Move between split windows by using the four directions H, L, I, N
" (note that  I use I and N instead of J and K because  J already does
" line joins and K is mapped to GitGrep the current word
nnoremap <silent> <C-h> <C-w>h
nnoremap <silent> <C-l> <C-w>l
nnoremap <silent> <C-k> <C-w>k
nnoremap <silent> <C-j> <C-w>j

" Zoom in and out of current window with ,gz
map <silent> <leader>gz <C-w>o

" Create window splits easier. The default
" way is Ctrl-w,v and Ctrl-w,s. I remap
" this to vv and ss
nnoremap <silent> <leader>v <C-w>v
nnoremap <silent> <leader>s <C-w>s

" ============================
" Shortcuts for everyday tasks
" ============================

" copy current filename into system clipboard - mnemonic: (c)urrent(f)ilename
" this is helpful to paste someone the path you're looking at
nnoremap <silent> <leader>cf :let @* = expand("%:~")<CR>
nnoremap <silent> <leader>cn :let @* = expand("%:t")<CR>

"Clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

"(v)im (c)ommand - execute current line as a vim command
nmap <silent> <leader>vc yy:<C-f>p<C-c><CR>

"(v)im (r)eload
nmap <silent> <leader>vr :so %<CR>

" Type ,hl to toggle highlighting on/off, and show current value.
noremap <leader>hl :set hlsearch! hlsearch?<CR>

" These are very similar keys. Typing 'a will jump to the line in the current
" file marked with ma. However, `a will jump to the line and column marked
" with ma.  It’s more useful in any case I can imagine, but it’s located way
" off in the corner of the keyboard. The best way to handle this is just to
" swap them: http://items.sjbach.com/319/configuring-vim-right
nnoremap ' `
nnoremap ` '

" Get the current highlight group. Useful for then remapping the color
map <leader>hi :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<' . synIDattr(synID(line("."),col("."),0),"name") . "> lo<" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">" . " FG:" . synIDattr(synIDtrans(synID(line("."),col("."),1)),"fg#")<CR>

" ,hp = html preview
map <silent> <leader>hp :!open -a Safari %<CR><CR>
