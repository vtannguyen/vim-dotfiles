" Various mappings go here

" Map the leader key to ','
let mapleader = ','

" Autoclosing braces ---- {{{
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
" }}}

" Mapping shortcut to remove highlight
nnoremap <Leader><Space> :nohl<CR>

" Align text
nnoremap <Leader>a :Tabularize /

nnoremap gb :bnext<CR>
nnoremap gB :bprev<CR>

" Easier way to save files
nnoremap gw :w<CR>

" Easier way to quit file
nnoremap gq :q<CR>

" For those pesky :W errors...
command! W w
command! Wq wq
command! WQ wq
command! Q q

" Fix that annoying <C-j> imaps mapping problem
" Something /must/ map to <Plug>IMAP_JumpForward in order to remap <C-j>
map <C-SPACE> <Plug>IMAP_JumpForward

" Make it easier to move between windows ---- {{{
nnoremap <C-H> <C-W>h
nnoremap <C-J> <C-W>j
nnoremap <C-K> <C-W>k
nnoremap <C-L> <C-W>l
inoremap <C-H> <Esc><C-W>h
inoremap <C-J> <Esc><C-W>j
inoremap <C-K> <Esc><C-W>k
inoremap <C-L> <Esc><C-W>l
" }}}

" easier mappings for resizing windows
nnoremap <C-w>< 60<C-w><
nnoremap <C-w>> 60<C-w>>
nnoremap + 5<C-w>+
nnoremap _ 5<C-w>-

" Make it easier to paste in insert mode
inoremap PPP <Esc>pa

" While shifting indent, stay in visual mode
vnoremap < <gv
vnoremap > >gv
vnoremap <Space> I<Space><Esc>gv

" Undo and redo in insert mode
inoremap <C-u> <C-o>u
inoremap <C-y> <C-o><C-R>

" Vimux ---- {{{
" Prompt for a command to run
nnoremap <Leader>vp :VimuxPromptCommand<CR>

" Run last command executed by VimuxRunCommand
nnoremap <Leader>vl :VimuxRunLastCommand<CR>

" Inspect runner pane
nnoremap <Leader>vi :VimuxInspectRunner<CR>

" Close vim tmux runner opened by VimuxRunCommand
nnoremap <Leader>vq :VimuxCloseRunner<CR>

" Interrupt any command running in the runner pane
nnoremap <Leader>vs :VimuxInterruptRunner<CR>

" Zoom the runner pane (use <bind-key> z to restore runner pane)
nnoremap <Leader>vz :call VimuxZoomRunner()<CR>
" }}}

" Run script with Vimux ---- {{{
nnoremap <silent><Leader>x <Esc>:RunScript<CR>
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
" }}}

" vim-lsp ---- {{{
nnoremap gd :LspDefinition<CR>
nnoremap gs :LspDocumentSymbol<CR>
nnoremap gS :LspWorkspaceSymbol<CR>
nnoremap <leader>gr :LspReferences<CR>
nnoremap gi :LspImplementation<CR>
nnoremap <leader>gt :LspTypeDefinition<CR>
nnoremap <leader>rn :LspRename<CR>
nnoremap [g :LspPreviousDiagnostic<CR>
nnoremap ]g :LspNextDiagnostic<CR>
nnoremap K :LspHover<CR>
" }}}

" vim test ---- {{{
nnoremap <silent> tn :TestNearest<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> tl :TestLast<CR>
nnoremap <silent> tg :TestVisit<CR>
" }}}
