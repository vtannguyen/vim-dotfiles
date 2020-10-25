" Plugin-specific configurations go here

" --------------------------
" ----- Vimux settings -----
" --------------------------
let g:VimuxOrientation = "h"


" ----------------------------------
" ----- YouCompleteMe settings -----
" ----------------------------------
" Avoid conflict with SnipMate
let g:ycm_key_list_select_completion = ['<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']


" ------------------------------
" ----- NERD_Tree settings -----
" ------------------------------
let g:NERDTreeWinPos = 'right'
map <Leader>n :NERDTreeFind<cr>
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


" ----------------------------------------
" ----- Rainbow Parentheses settings -----
" ----------------------------------------
" Always on
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces


" -------------------------------
" ----- Tabularize settings -----
" -------------------------------
nmap <Leader>a= :Tabularize /=<CR>
vmap <Leader>a= :Tabularize /=<CR>
nmap <Leader>a: :Tabularize /:<CR>
vmap <Leader>a: :Tabularize /:<CR>
nmap <Leader>a, :Tabularize /,<CR>
vmap <Leader>a, :Tabularize /,<CR>


" ---------------------------
" ----- Tagbar settings -----
" ---------------------------
nmap <Leader>t :TagbarToggle<CR>


" ----------------------------------
" ----- Airline theme settings -----
" ----------------------------------
let g:airline_theme='base16_atelierforest'


" --------------------------------
" ----- Pydocstring settings -----
" --------------------------------
let g:pydocstring_enable_mapping = 0
let g:pydocstring_formatter = 'google'


" -------------------------------
" ----- Simplyfold settings -----
" -------------------------------
set foldmethod=indent
set foldlevel=99
" Enable folding with the spacebar
nnoremap <space> za
let g:SimpylFold_docstring_preview=1


" ----------------------------------
" ----- Vim close tag settings -----
" ----------------------------------
let g:closetag_filenames = '*.html,*.js,*.phtml'


" -----------------------------
" ----- Vim wiki settings -----
" -----------------------------
let g:vimwiki_list = [{'path': '~/vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]


" ---------------------------------
" ----- Fuzzy finder settings -----
" ---------------------------------
let g:fzf_layout = {'down': '30%'}


" --------------------------------
" ----- vim-codefmt settings -----
" --------------------------------
autocmd FileType html,typescript,javascript,css,less,scss,json,yaml,markdown,vue let b:codefmt_formatter = 'prettier'
autocmd FileType python let b:codefmt_formatter = 'yapf'
