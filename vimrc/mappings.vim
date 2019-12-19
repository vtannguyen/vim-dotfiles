" Various mappings go here

" Map the leader key to ','
let mapleader = ','

" Autoclosing braces
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

" Mapping shortcut to remove highlight
map <Leader><Space> :nohl<CR>

" comment code
nmap <C-I> <plug>NERDCommenterToggle
vmap <C-I> <plug>NERDCommenterToggle<C-C>

" Align text
map <Leader>a :Tabularize /

map gb :bnext<cr>
map gB :bprev<cr>

" Easier way to save files
map df :w<CR>

" Easier way to quit file
noremap <F6> :q<CR>

" For those pesky :W errors...
command! W w
command! Wq wq
command! WQ wq
command! Q q

" Better scrolling
noremap <F3> 5<C-Y>
noremap <F4> 5<C-E>

" Fix that annoying <C-j> imaps mapping problem
" Something /must/ map to <Plug>IMAP_JumpForward in order to remap <C-j>
map <C-SPACE> <Plug>IMAP_JumpForward

" Make it easier to move between windows
nmap <C-H> <C-W>h
nmap <C-J> <C-W>j
nmap <C-K> <C-W>k
nmap <C-L> <C-W>l
imap <C-H> <Esc><C-W>h
imap <C-J> <Esc><C-W>j
imap <C-K> <Esc><C-W>k
imap <C-L> <Esc><C-W>l

" easier mappings for resizing windows
nnoremap <C-w>< 5<C-w><
nnoremap <C-w>> 5<C-w>>
nmap + 5<C-w>+
nmap _ 5<C-w>-

" Make it easier to paste in insert mode
inoremap PPP <Esc>pa

" Easier to copy and paste from clipboard easier
noremap <Leader>Y "*y
noremap <Leader>P "*p
noremap <Leader>y "+y
noremap <Leader>p "+p

" While shifting indent, stay in visual mode
vnoremap < <gv
vnoremap > >gv
vnoremap <Space> I<Space><Esc>gv

" Map the Esc key
inoremap kj <Esc>

" esc in command mode
cnoremap kj <C-C>

" Undo and redo in insert mode
inoremap <C-u> <C-o>u
inoremap <C-y> <C-o><C-R>

"Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>
