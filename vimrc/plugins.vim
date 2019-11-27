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

" -----------------------
" --- UI enhancements ---
" -----------------------
" File explorer within Vim
Plugin 'scrooloose/nerdtree'
" Ultimate Vim statusline utility
Plugin 'Lokaltog/vim-powerline'
" Highlights the matching HTML tag
Plugin 'gregsexton/MatchTag'
" Rainbow parentheses!! :)
Plugin 'kien/rainbow_parentheses.vim'

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
" Plugin 'airblade/vim-gitgutter'
" Adds visualizations for vim marks
Plugin 'kshenoy/vim-signature'

" ----------------------------
" --- Editing enhancements ---
" ----------------------------
" Shortcuts to comment code. Use <Leader>cc or <Leader>c<Space>
Plugin 'scrooloose/nerdcommenter'
" Simple shortcuts to deal with surrounding symbols
Plugin 'tpope/vim-surround'
" Text filtering and alignment
Plugin 'godlygeek/tabular'
" Insert-mode autocompletion for quotes, parens, brackets, etc.
" Plugin 'Raimondi/delimitMate'
" Syntax checking in Vim!
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-unimpaired'
Plugin 'tpope/vim-endwise'
Plugin 'vim-scripts/matchit.zip'
Plugin 'Valloric/YouCompleteMe'
Plugin 'davidhalter/jedi-vim'

" snipMate
Plugin 'garbas/vim-snipmate'
" snipMate dependences
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'

" vim-tmux navigator
Plugin 'christoomey/vim-tmux-navigator'

" fuzzy finder
Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'

" Language support
" Plugin 'tpope/vim-rails'
" Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-haml'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'itspriddle/vim-jquery'
Plugin 'leshill/vim-json'
Plugin 'tpope/vim-markdown'
Plugin 'vimoutliner/vimoutliner'
Plugin 'wannesm/wmgraphviz.vim'
Plugin 'omlet.vim'
" Plugin 'jcf/vim-latex'
Plugin 'vim-scripts/haskell.vim'
Plugin 'spf13/PIV'
Plugin 'othree/html5.vim'
Plugin 'groenewege/vim-less'
Plugin 'slim-template/vim-slim'
Plugin 'klen/python-mode'
Plugin 'django.vim'

Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'

" Vim Text Objects
" Plugin 'bkad/CamelCaseMotion'

" Integrations
Plugin 'tpope/vim-fugitive'
" Plugin 'mileszs/ack.vim'
" Plugin 'majutsushi/tagbar'
" Plugin 'tpope/vim-classpath'

" Colors
Plugin 'altercation/vim-colors-solarized'
Plugin 'sjl/badwolf'

" Utilities, Dependencies
Plugin 'L9'

call vundle#end()            " required
filetype plugin indent on    " required
