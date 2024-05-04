" Various mappings go here

" Map the leader key to ','
let mapleader = ','

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

" Easier way to save all buffers
nnoremap gwa :wa<CR>

" Easier way to quit all windows
nnoremap gqa :qa<CR>

" Copy the current buffer's path to the clipboard
nmap cb :let @" = expand("%")<CR>

" Search for file using fuzzy finder
nnoremap <leader>f :FZF<CR>

" Search for buffer using fuzzy finder
nnoremap <leader>b :Buffers<CR>

" Increase number by 1
nnoremap <C-b> <C-a>

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
      call VimuxRunCommand("bash " . expand("%"))
  elseif expand("%:e") == 'py'
      call VimuxRunCommand("python " . expand("%"))
  elseif expand("%:e") == 'js'
      call VimuxRunCommand("node " . expand("%"))
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
nnoremap <silent> tn :TestNearest --verbose<CR>
nnoremap <silent> tf :TestFile<CR>
nnoremap <silent> ts :TestSuite<CR>
nnoremap <silent> tl :TestLast<CR>
nnoremap <silent> tg :TestVisit<CR>
" }}}

" vim autoflake ---- {{{
nnoremap <silent> <leader>cu :Autoflake --remove-all-unused-imports<CR>
" }}}

inoremap <silent> <C-j> <C-n>
inoremap <silent> <C-k> <C-p>

" vim asyncomplete ---- {{{
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
" }}}

" vim SnipMate ---- {{{
imap <C-l> <Plug>snipMateNextOrTrigger
" }}}

" netrw ---- {{{
nnoremap <leader>e :Rexplore<CR>

function! NetrwMapping()
  nmap <silent> <buffer> <c-h> :TmuxNavigateLeft<CR>
  nmap <silent> <buffer> <c-j> :TmuxNavigateDown<CR>
  nmap <silent> <buffer> <c-k> :TmuxNavigateUp<CR>
  nmap <silent> <buffer> <c-l> :TmuxNavigateRight<CR>
endfunction

augroup netrw_mapping
  autocmd!
  autocmd filetype netrw call NetrwMapping()
  autocmd VimEnter * if expand("%") == "" | edit . | endif
augroup END
" }}}

" vim fugitive ---- {{{
nnoremap <leader>gg :G<CR>
nnoremap <leader>gp :Git push<CR>
" }}}

" vim ale ---- {{{
nnoremap ]a :ALENextWrap<CR>
nnoremap [a :ALEPreviousWrap<CR>
nnoremap ]A :ALELast<CR>
nnoremap [A :ALEFirst<CR>
" }}}

" vim easymotion ---- {{{
" s{char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to word
nmap ;w <Plug>(easymotion-overwin-w)
" }}}
