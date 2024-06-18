" All the Vim settings go here!

"set autoindent                        " always set autoindenting on
set autoread                          " Refresh buffer if file has been changed externally. Note that this doesn't automatically run every some interval.
set autowrite                         " Automatically save before commands like :next
set backspace=indent,eol,start        " Backspace over everything.
set cursorline                        " highlight cursor line
set encoding=utf-8
" set noexpandtab
set expandtab
set softtabstop=0
set clipboard=unnamedplus
set foldlevel=20
set foldmethod=syntax
set formatoptions=1
set hidden                            " Keep buffers around after closing them
set history=50
set hlsearch
set ignorecase
set incsearch                         " search as you type
set laststatus=2                      " Always show the status line
set linebreak
set list                              " show trailing whitespace and tabs
set listchars=tab:\|\ ,trail:•,extends:>,precedes:<,nbsp:+
set modelines=1
set mouse=a
set noequalalways
set number
set relativenumber
set pastetoggle=<F7>
set ruler
set scrolljump=3
set scrolloff=5
set shell=/bin/bash
set shiftwidth=4
set shortmess=atI
set showcmd                           " Display incomplete commands
set smartcase
set splitbelow
set splitright
set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P " taken from :help fugitive-statusline
set tabstop=4
set tags=./tags;/
set textwidth=78
set timeoutlen=600                    " Time to wait after ESC
set ttimeoutlen=50
set viminfo='10,\"100,:20,%,n~/.viminfo    " Use viminfo
set visualbell
set wildmenu
set wildmode=list:longest,full        " bash-like command line tab completion
set winheight=24
set winwidth=85
set wrap
set wrapmargin=2
set diffopt=vertical

" Easier to open large files
augroup LargeFile
        let g:large_file = 1048576 " 1MB
        au BufReadPre *
                \ let f=expand("<afile>") |
                \ if getfsize(f) > g:large_file |
                        \ setlocal noswapfile undolevels=5 eventignore=BufWritePre,BufWrite,BufRead,BufReadPost |
                \ else |
                        \ setlocal eventignore= |
                \ endif
augroup END
