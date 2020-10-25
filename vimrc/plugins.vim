set nocompatible              " be improved, required
filetype off                  " required
" Where all the plugins are specified, using Vundle

" Initialize vundle!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ----------------------------
" Plugins, managed by Vundle!
" ----------------------------

" Use to manage plugins!
Plugin 'VundleVim/Vundle.vim'


" ----------------
" --- Movement ---
" ----------------
" Easier vim motions. Try <Leader><Leader>w or <Leader><Leader>fo
Plugin 'Lokaltog/vim-easymotion'
" Jump between pair of {}, [] or ()
Plugin 'vim-scripts/matchit.zip'


" ------------------------
" --- Vim Text Objects ---
" ------------------------
" Select and operate on indent text objects
Plugin 'michaeljsmith/vim-indent-object'

" Select and operate on line text objects
Plugin 'kana/vim-textobj-line'

" Select and operate on entire file text objects
Plugin 'kana/vim-textobj-entire'

" Provide more text object, e.g [], {}...
Plugin 'wellle/targets.vim'

" Required by vim-textobj-line and vim-textobj-entire
Plugin 'kana/vim-textobj-user'

" -----------------------
" --- UI enhancements ---
" -----------------------
" Ultimate Vim statusline utility
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Highlights the matching HTML tag
Plugin 'gregsexton/MatchTag'

" Rainbow parentheses!! :)
Plugin 'kien/rainbow_parentheses.vim'

" Adds visualizations for vim marks
Plugin 'kshenoy/vim-signature'


" ------------------------
" --- Files management ---
" ------------------------
" File explorer within Vim
Plugin 'scrooloose/nerdtree'

" Use to fuzzy find file
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }


" --------------------
" --- Autocomplete ---
" --------------------
" Allow tab completion when searching
Plugin 'vim-scripts/SearchComplete'

" Create boilerplates
Plugin 'garbas/vim-snipmate'
" snipMate dependences
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'

" Helps to end certain structures automatically
Plugin 'tpope/vim-endwise'

" Autocomplete
Plugin 'Valloric/YouCompleteMe'


" ----------------------------
" --- Editing enhancements ---
" ----------------------------
" Shortcuts to comment code. Use <Leader>cc or <Leader>c<Space>
Plugin 'tpope/vim-commentary'

" Text filtering and alignment
Plugin 'godlygeek/tabular'

" Break or join lines
Plugin 'AndrewRadev/splitjoin.vim'
"
" Select and operate on surrounding symbols
Plugin 'tpope/vim-surround'

" Code formating.
Plugin 'google/vim-maktaba'
Plugin 'google/vim-codefmt'
Plugin 'google/vim-glaive'

" Copy and paste
Plugin 'vim-scripts/ReplaceWithRegister'
" Need to install wl-clipboard first
Plugin 'christoomey/vim-system-copy'


" ----------------------
" --- code structure ---
" ----------------------
" Browse the tags of the current file and get an overview of its structure
Plugin 'preservim/tagbar'


" ------------------------
" --- Syntax highlight ---
" ------------------------
Plugin 'pangloss/vim-javascript'
Plugin 'elzr/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'othree/html5.vim'


" --------------------------
" --- Python development ---
" --------------------------
" class, function and docstring text object
Plugin 'jeetsukumaran/vim-pythonsense'

" Syntax checking
Plugin 'dense-analysis/ale'

" Auto complete python
Plugin 'davidhalter/jedi-vim'

" Auto generate docstring
Plugin 'heavenshell/vim-pydocstring'

" Python code folding
Plugin 'tmhedberg/SimpylFold'

" Pytest support
Plugin 'vtannguyen/vimux-pytest.vim'


" ------------------------------
" --- Javascript development ---
" ------------------------------
" Syntax highlight for jsx
Plugin 'maxmellon/vim-jsx-pretty'

" Close tag for jsx
Plugin 'alvan/vim-closetag'


" -------------------
" --- Git for Vim ---
" -------------------
" Run git command in vim
Plugin 'tpope/vim-fugitive'

" Show git status flags in Nerdtree
Plugin 'Xuyuanp/nerdtree-git-plugin'

" Show git diff
Plugin 'airblade/vim-gitgutter.git'

" Git branch with vim
Plugin 'idanarye/vim-merginal'


" ----------------
" ----- Tmux -----
" ----------------
" vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" run tmux command from vim termina
Plugin 'benmills/vimux'


" -------------------
" ---- Vim Note -----
" -------------------
" Personal wiki for vim
Plugin 'vimwiki/vimwiki'

" Markdown preview for vim
Plugin 'iamcco/markdown-preview.vim'


" Utilities, Dependencies
Plugin 'L9'

call vundle#end()            " required
call glaive#Install()
" Optional: Enable codefmt's default mappings on the <Leader>= prefix.
Glaive codefmt plugin[mappings]
" Glaive codefmt google_java_executable="java -jar /path/to/google-java-format-VERSION-all-deps.jar"
filetype plugin indent on    " required
