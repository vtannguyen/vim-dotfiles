" Plugin-specific configurations go here

" --------------------------
" ----- Vimux settings ----- {{{
" --------------------------
let g:VimuxOrientation = "h"
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
let test#python#pytest#options = {
    \ 'nearest': '--exitfirst --last-failed',
    \ 'file': '--exitfirst --last-failed',
    \ 'class': '--exitfirst --last-failed',
    \ 'suite': '--exitfirst --last-failed',
\}
" }}}


" -----------------------
" ----- ale setting ----- {{{
" -----------------------
" not show error at the end of the line
let g:ale_virtualtext_cursor = 0
highlight ALEError cterm=underline 
highlight ALEWarning cterm=underline
" }}}


" -------------------------
" ----- netrw setting ----- {{{
" -------------------------
let g:netrw_banner=0
let g:netrw_altv = 1
let g:netrw_localcopydircmd = 'cp -r'
let g:netrw_liststyle = 3
let g:netrw_bufsettings = 'noma nomod nu nobl nowrap ro'
let g:netrw_list_hide= '.*\.swp$'
" }}}


" ------------------------------
" ----- Easymotion setting ----- {{{
" ------------------------------
map ; <Plug>(easymotion-prefix)
let g:EasyMotion_smartcase = 1
" }}}


" ------------------------------
" ----- Vim-template setting ----- {{{
" ------------------------------
let g:templates_directory = '~/.vim/templates'
let g:username = 'Tan Nguyen'
" }}}


" ------------------------------
" ----- Nerdtree setting ----- {{{
" ------------------------------
let g:NERDTreeWinPos = "right"
let NERDTreeIgnore = ['\.swp$']
" enable line numbers
let NERDTreeShowLineNumbers=1
" make sure relative line numbers are used
autocmd FileType nerdtree setlocal relativenumber
" count lines of files
let g:NERDTreeFileLines = 1
let g:NERDTreeMinimalUI = 1
" let g:NERDTreeMinimalMenu = 1
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinSize = 50
" Exit Vim if NERDTree is the only window remaining in the only tab.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | call feedkeys(":quit\<CR>:\<BS>") | endif
let g:NERDTreeShowHidden = 1
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


" ------------------------------
" ----- vim-grep-operator setting ----- {{{
" ------------------------------
set grepprg=git\ grep\ -n\ $*
" }}}


" ------------------------------
" ----- vim-system-copy setting ----- {{{
" ------------------------------
let g:system_copy#copy_command='xclip -sel clipboard'
let g:system_copy#paste_command='xclip -sel clipboard -o'
" }}}


" ------------------------------
" ----- vim-languagetool setting ----- {{{
" ------------------------------
let g:languagetool_jar='$HOME/.vim/code-formatters/language-tool/languagetool-commandline.jar'
let g:languagetool_win_height=-1
" }}}
