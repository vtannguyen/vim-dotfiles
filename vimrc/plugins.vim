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
" Like Command-T or fuzzyfinder. Use to fuzzy find files
Plugin 'kien/ctrlp.vim'
" vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'


" -----------------------
" --- UI enhancements ---
" -----------------------
" File explorer within Vim
Plugin 'scrooloose/nerdtree'
" Ultimate Vim statusline utility
" Plugin 'Lokaltog/vim-powerline'
" Plugin 'powerline/powerline'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Highlights the matching HTML tag
Plugin 'gregsexton/MatchTag'
" Rainbow parentheses!! :)
Plugin 'kien/rainbow_parentheses.vim'
" Colors
" Plugin 'altercation/vim-colors-solarized'
" Plugin 'sjl/badwolf'
" Plugin 'morhetz/gruvbox'


" ------------------------
" --- Vim enhancements ---
" ------------------------
" Shows 'Nth match out of M' for searches
" Plugin 'IndexedSearch'
" Allow tab completion when searching
Plugin 'vim-scripts/SearchComplete'
" Simple plugin to view most recently used files
" Plugin 'mru.vim'
" Plugin 'bufexplorer.zip'
" Adds visualizations for vim marks
Plugin 'kshenoy/vim-signature'
" Break or join lines
Plugin 'AndrewRadev/splitjoin.vim'

" ----------------------------
" --- Editing enhancements ---
" ----------------------------
" Shortcuts to comment code. Use <Leader>cc or <Leader>c<Space>
" Plugin 'scrooloose/nerdcommenter'
Plugin 'tpope/vim-commentary'
" Simple shortcuts to deal with surrounding symbols
Plugin 'tpope/vim-surround'
" Text filtering and alignment
Plugin 'godlygeek/tabular'
Plugin 'christoomey/vim-sort-motion'

" Insert-mode autocompletion for quotes, parens, brackets, etc.
" Plugin 'Raimondi/delimitMate'
" Syntax checking in Vim!
" Plugin 'scrooloose/syntastic'
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
" Plugin 'tpope/vim-rails'
" Plugin 'vim-ruby/vim-ruby'
" Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
" Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-markdown'
" Plugin 'vimoutliner/vimoutliner'
" Plugin 'wannesm/wmgraphviz.vim'
" Plugin 'omlet.vim'
" Plugin 'jcf/vim-latex'
" Plugin 'vim-scripts/haskell.vim'
Plugin 'spf13/PIV'
Plugin 'othree/html5.vim'
" Plugin 'groenewege/vim-less'
Plugin 'slim-template/vim-slim'
"Plugin 'klen/python-mode'
" Plugin 'guns/vim-clojure-static'
" Plugin 'tpope/vim-fireplace'

" Integrations
" Plugin 'mileszs/ack.vim'
Plugin 'majutsushi/tagbar'
" Plugin 'tpope/vim-classpath'

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

" ------------------------
" --- Vim Text Objects ---
" ------------------------
" Plugin 'bkad/CamelCaseMotion'
Plugin 'michaeljsmith/vim-indent-object'
Plugin 'kana/vim-textobj-line'
Plugin 'kana/vim-textobj-user'
Plugin 'glts/vim-textobj-comment'

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
