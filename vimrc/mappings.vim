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

" Align text
map <Leader>a :Tabularize /

map gb :bnext<CR>
map gB :bprev<CR>

" Easier way to save files
map gw :w<CR>

" Easier way to quit file
noremap gq :q<CR>

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
nnoremap <C-w>< 60<C-w><
nnoremap <C-w>> 60<C-w>>
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

" Undo and redo in insert mode
inoremap <C-u> <C-o>u
inoremap <C-y> <C-o><C-R>

" Remove all trailing whitespace by pressing F5
nnoremap <F5> :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>

" Vimux
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
map <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
map <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
map <Leader>vs :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
map <Leader>vz :call VimuxZoomRunner()<CR>

" Pytest
nmap <silent><Leader>f <Esc>:Pytest file verbose<CR>
nmap <silent><Leader>ff <Esc>:Pytest function verbose<CR>
nmap <silent><Leader>c <Esc>:Pytest class verbose<CR>
nmap <silent><Leader>m <Esc>:Pytest method verbose<CR>
nmap <silent><Leader>p <Esc>:Pytest project verbose<CR>

" Run script
nmap <silent><Leader>x <Esc>:RunScript<CR>
" This function need to be put in a proper package
command! RunScript call s:RunScript()
function! s:RunScript()
  if expand("%:e") == 'sh'
      call VimuxRunCommand("./" . expand("%"))
  elseif expand("%:e") == 'py'
      call VimuxRunCommand("python " . expand("%"))
  else
      echo "Script extension \"." . expand("%:e") "\" is currently not supported"
  endif
endfunction

" vim-lsp
nmap gd <plug>(lsp-definition)
nmap gs <plug>(lsp-document-symbol-search)
nmap gS <plug>(lsp-workspace-symbol-search)
nmap <leader>gr <plug>(lsp-references)
nmap gi <plug>(lsp-implementation)
nmap gt <plug>(lsp-type-definition)
nmap <leader>rn <plug>(lsp-rename)
nmap [g <plug>(lsp-previous-diagnostic)
nmap ]g <plug>(lsp-next-diagnostic)
nmap K <plug>(lsp-hover)
