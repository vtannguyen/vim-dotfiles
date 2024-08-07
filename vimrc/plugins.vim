" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" ----------------
" --- Movement --- {{{
" ----------------
" Easier vim motions. Try <Leader><Leader>w or <Leader><Leader>fo
Plug 'Lokaltog/vim-easymotion'

" Jump between pair of {}, [] or ()
Plug 'vim-scripts/matchit.zip'
" }}}


" ------------------------
" --- Vim Text Objects --- {{{
" ------------------------
" Select and operate on indent text objects
Plug 'michaeljsmith/vim-indent-object'

" Select and operate on line text objects
Plug 'kana/vim-textobj-line'

" Select and operate on entire file text objects
Plug 'kana/vim-textobj-entire'

" Provide more text object, e.g [], {}...
Plug 'wellle/targets.vim'

" Required by vim-textobj-line and vim-textobj-entire
Plug 'kana/vim-textobj-user'
" }}}


" -----------------------
" --- UI enhancements --- {{{
" -----------------------
" Ultimate Vim statusline utility
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Highlights the matching HTML tag
Plug 'gregsexton/MatchTag'

" Rainbow parentheses!! :)
Plug 'kien/rainbow_parentheses.vim'

" Adds visualizations for vim marks
Plug 'kshenoy/vim-signature'
" }}}


" ------------------------
" --- Files management --- {{{
" ------------------------
" Use to fuzzy find file
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" File explorer
Plug 'preservim/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'PhilRunninger/nerdtree-visual-selection'
Plug 'Xuyuanp/nerdtree-git-plugin'
" }}}


" --------------------
" --- Autocomplete --- {{{
" --------------------
" Create boilerplates
Plug 'garbas/vim-snipmate'
" snipMate dependences
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'honza/vim-snippets'

" Helps to end certain structures automatically
Plug 'tpope/vim-endwise'

" Autocomplete
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'

" Creating template files
Plug 'aperezdc/vim-template'
"" }}}


" ----------------------------
" --- Editing enhancements --- {{{
" ----------------------------
" Shortcuts to comment code. Use <Leader>cc or <Leader>c<Space>
Plug 'tpope/vim-commentary'

" Abbreviation, Substitution and Coercion text
Plug 'tpope/vim-abolish'

" Text filtering and alignment
Plug 'godlygeek/tabular'

" Select and operate on surrounding symbols
Plug 'tpope/vim-surround'

" Insert or delete brackets, parens, quotes in pair.
Plug 'jiangmiao/auto-pairs'

" Code formating.
Plug 'google/vim-maktaba'
Plug 'google/vim-codefmt'
Plug 'google/vim-glaive'

" Copy and paste from register
Plug 'vim-scripts/ReplaceWithRegister'

" Copy and paste from system clipboard
Plug 'christoomey/vim-system-copy'

" Grammar checking
Plug 'dpelle/vim-LanguageTool'
" }}}


" ----------------------
" --- Code structure --- {{{
" ----------------------
" Browse the tags of the current file and get an overview of its structure
Plug 'preservim/tagbar'

" Fold yaml file
Plug 'pedrohdz/vim-yaml-folds'
" }}}


" ------------------------
" --- Syntax highlight --- {{{
" ------------------------
Plug 'pangloss/vim-javascript'
Plug 'elzr/vim-json'
Plug 'tpope/vim-markdown'
Plug 'othree/html5.vim'
" }}}


" ---------------------------
" --- General development --- {{{
" ---------------------------
" Language Server Protocol
" Tested language server. To install run :LspInstallServer <server_name>
"      Python -> jedi-language-server
"      Javascript -> typescript-language-server
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'rhysd/vim-lsp-ale'

" Test
Plug 'vim-test/vim-test'

" grep the text object in the project directory
Plug 'inside/vim-grep-operator'

" AI auto complete
" Plug 'Exafunction/codeium.vim', { 'branch': 'main' }
" }}}


" --------------------------
" --- Python development --- {{{
" --------------------------
" class, function and docstring text object
Plug 'jeetsukumaran/vim-pythonsense'

" Syntax checking
Plug 'dense-analysis/ale'

" Auto generate docstring
Plug 'heavenshell/vim-pydocstring', {'do': 'make install', 'for': 'python'}

" Python code folding
Plug 'tmhedberg/SimpylFold'

" Clean unused imports
Plug 'tenfyzhong/autoflake.vim', {'do': 'pip install autoflake'}
" }}}


" ------------------------------
" --- Javascript development --- {{{
" ------------------------------
" Syntax highlight for jsx
Plug 'maxmellon/vim-jsx-pretty'

" Close tag for jsx
Plug 'alvan/vim-closetag'
" }}}


" -------------------
" --- Git for Vim --- {{{
" -------------------
" Run git command in vim
Plug 'tpope/vim-fugitive'

" Shows a git diff in the sign column
Plug 'airblade/vim-gitgutter'
" }}}


" ----------------
" ----- Tmux ----- {{{
" ----------------
" vim-tmux navigator
Plug 'christoomey/vim-tmux-navigator'

" run tmux command from vim terminal
Plug 'benmills/vimux'
" }}}


" -------------------
" ---- Vim Note ----- {{{
" -------------------
" Personal wiki for vim
Plug 'vimwiki/vimwiki'

" Markdown preview for vim
Plug 'iamcco/markdown-preview.vim'
" }}}


" Initialize plugin system
call plug#end()
call glaive#Install()
" Config code formartter prefix
Glaive codefmt plugin[mappings]='<leader>F'
Glaive codefmt shfmt_options=`['-i', '4', '-sr', '-ci', '-fn']`
Glaive codefmt black_executable=`$HOME . "/.vim/code-formatters/venv/bin/black"`
Glaive codefmt js_beautify_executable=`$HOME . "/.vim/code-formatters/node_modules/.bin/js-beautify"`
Glaive codefmt isort_executable=`$HOME . "/.vim/code-formatters/venv/bin/isort"`
Glaive codefmt prettier_executable=`$HOME . "/.vim/code-formatters/node_modules/.bin/prettier"`
