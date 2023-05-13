" Plugin-specific configurations go here

" --------------------------
" ----- Vimux settings ----- {{{
" --------------------------
let g:VimuxOrientation = "h"
" }}}


" ------------------------------
" ----- NERD_Tree settings ----- {{{
" ------------------------------
let g:NERDTreeWinPos = 'right'
map <Leader>n :NERDTreeFind<cr>
let NERDTreeIgnore = ['\.swp$']
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeShowHidden = 1
let NERDTreeWinSize = 40
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
"let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1
let g:NERDTreeGitStatusIndicatorMapCustom = {
    \ "Modified"  : "~",
    \ "Staged"    : "+",
    \ "Untracked" : "*",
    \ "Renamed"   : "»",
    \ "Unmerged"  : "=",
    \ "Deleted"   : "-",
    \ "Dirty"     : "×",
    \ "Clean"     : "ø",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }
" }}}


" ---------------------------
" ----- Tagbar settings ----- {{{
" ---------------------------
nmap <Leader>t :TagbarToggle<CR>
" }}}


" ----------------------------------------
" ----- Rainbow Parentheses settings ----- {{{
" ----------------------------------------
" Always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
" }}}


" -------------------------------
" ----- Tabularize settings ----- {{{
" -------------------------------
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>
" }}}


" ----------------------------------
" ----- Airline theme settings ----- {{{
" ----------------------------------
let g:airline_theme='base16_atelierforest'
" }}}


" --------------------------------
" ----- Pydocstring settings ----- {{{
" --------------------------------
let g:pydocstring_enable_mapping = 0
let g:pydocstring_formatter = 'google'
" }}}


" -------------------------------
" ----- Simplyfold settings ----- {{{
" -------------------------------
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1
" }}}


" ----------------------------------
" ----- Vim close tag settings ----- {{{
" ----------------------------------
let g:closetag_filenames = '*.html,*.js,*.phtml'
" }}}


" -----------------------------
" ----- Vim wiki settings ----- {{{
" -----------------------------
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
" }}}


" ---------------------------------
" ----- Fuzzy finder settings ----- {{{
" ---------------------------------
let g:fzf_layout = {'down': '30%'}
" }}}


" --------------------------------
" ----- vim-codefmt settings ----- {{{
" --------------------------------
augroup autoformat_settings
  autocmd FileType bzl AutoFormatBuffer buildifier
  autocmd FileType c,cpp,proto,arduino AutoFormatBuffer clang-format
  autocmd FileType dart AutoFormatBuffer dartfmt
  autocmd FileType go AutoFormatBuffer gofmt
  autocmd FileType gn AutoFormatBuffer gn
  autocmd FileType html,css,sass,scss,less,json AutoFormatBuffer js-beautify
  autocmd FileType java AutoFormatBuffer google-java-format
  autocmd FileType python AutoFormatBuffer black
  autocmd FileType rust AutoFormatBuffer rustfmt
  autocmd FileType vue AutoFormatBuffer prettier
  autocmd FileType javascript AutoFormatBuffer prettier
  autocmd FileType swift AutoFormatBuffer swift-format
augroup END
autocmd BufWritePre *.py silent execute 'FormatCode isort'
" }}}


" ----------------------------
" ----- SnipMate Setting ----- {{{
" ----------------------------
let g:snipMate = { 'snippet_version' : 1 }
" }}}


" ----------------------------
" ----- vim test setting ----- {{{
" ----------------------------
let test#strategy = "vimux"
let test#python#runner = 'pytest'
" }}}


" ------------------------------
" ----- vimspector setting ----- {{{
" ------------------------------
let g:vimspector_enable_mappings = 'HUMAN'
" for normal mode - the word under the cursor
nmap <Leader>di <Plug>VimspectorBalloonEval
" }}}

" -----------------------
" ----- ale setting ----- {{{
" -----------------------
" not show error at the end of the line
let g:ale_virtualtext_cursor = 0
highlight ALEError cterm=underline 
highlight ALEWarning cterm=underline
" }}}
