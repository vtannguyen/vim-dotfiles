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
" Use to fuzzy find file
Plugin 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }



" ----------------
" ----- Tmux -----
" ----------------
" vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'
" run tmux command from vim termina
Plugin 'benmills/vimux'

" -----------------------
" --- UI enhancements ---
" -----------------------
" File explorer within Vim
Plugin 'scrooloose/nerdtree'
" Ultimate Vim statusline utility
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Highlights the matching HTML tag
Plugin 'gregsexton/MatchTag'
" Rainbow parentheses!! :)
Plugin 'kien/rainbow_parentheses.vim'

" ------------------------
" --- Vim enhancements ---
" ------------------------
" Allow tab completion when searching
Plugin 'vim-scripts/SearchComplete'
" Adds visualizations for vim marks
Plugin 'kshenoy/vim-signature'
" Break or join lines
Plugin 'AndrewRadev/splitjoin.vim'

" ----------------------------
" --- Editing enhancements ---
" ----------------------------
" Shortcuts to comment code. Use <Leader>cc or <Leader>c<Space>
Plugin 'tpope/vim-commentary'
" Simple shortcuts to deal with surrounding symbols
Plugin 'tpope/vim-surround'
" Text filtering and alignment
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-sort-motion'

" Syntax checking in Vim!
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Valloric/YouCompleteMe'

" Create boilerplates
Plugin 'garbas/vim-snipmate'
" snipMate dependences
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'

" Language support
Plugin 'pangloss/vim-javascript'
Plugin 'itspriddle/vim-jquery'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'spf13/PIV'
Plugin 'othree/html5.vim'
Plugin 'slim-template/vim-slim'

" Integrations
Plugin 'majutsushi/tagbar'

" Code formating. yapf need to install first via `pip install yapf`
Plugin 'mindriot101/vim-yapf'

" Copy and paste
Plugin 'vim-scripts/ReplaceWithRegister'
" Need to install wl-clipboard first
Plugin 'christoomey/vim-system-copy'

" --------------------------
" --- Python development ---
" --------------------------
" class, function and docstring text object
Plugin 'jeetsukumaran/vim-pythonsense'
Plugin 'django.vim'
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

" ------------------------
" --- Vim Text Objects ---
" ------------------------
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'
Plugin 'kana/vim-textobj-entire'
Plugin 'wellle/targets.vim'

" -------------------
" --- Git for Vim ---
" -------------------
" Plugin for git
Plugin 'tpope/vim-fugitive'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Show git diff
Plugin 'https://github.com/airblade/vim-gitgutter.git'
" Git branch with vim
Plugin 'idanarye/vim-merginal'


" Utilities, Dependencies
Plugin 'L9'

call vundle#end()            " required
filetype plugin indent on    " required
