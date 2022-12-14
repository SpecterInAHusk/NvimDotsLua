"syntax enable                          " Enables syntax highlighing (can be disabled due to the plugins)
set hidden                              " Required to keep multiple buffers open multiple buffers
set wrap linebreak                      " Wrap Lines
set encoding=utf-8                      " The encoding displayed
set pumheight=10                        " Makes popup menu smaller
set fileencoding=utf-8                  " The encoding written to file
set ruler              			        " Show the cursor position all the time
set cmdheight=1                         " More space for displaying messages
set iskeyword+=-                      	" treat dash separated words as a word text object"
set mouse=a                             " Enable your mouse
set splitbelow                          " Horizontal splits will automatically be below
set splitright                          " Vertical splits will automatically be to the right
set t_Co=256                            " Support 256 colors
set conceallevel=0                      " So that I can see `` in markdown files
set tabstop=4                           " Insert 4 spaces for a tab
set shiftwidth=4                        " Change the number of space characters inserted for indentation
set smarttab                            " Makes tabbing smarter will realize you have 2 vs 4
set shortmess=I                         " Disable shortmess on startup
set expandtab                           " Converts tabs to spaces
set autoindent                          " Makes indenting smart
filetype plugin indent on               " Makes indenting smart
set cindent                             " Good auto indent
set cinoptions=>N                       " Set Indent Style
set laststatus=0                        " Always display the status line
set number                              " Line numbers
set cursorline                          " Enable highlighting of the current line
set background=dark                     " tell vim what the background color looks like
set showtabline=1                       " Show tabs only when multiple are open
set noshowmode                          " We don't need to see things like -- INSERT -- anymore
set nobackup                            " This is recommended by coc
set nowritebackup                       " This is recommended by coc
set updatetime=100                      " Faster completion
set timeoutlen=500                      " By default timeoutlen is 1000 ms
"set clipboard=unnamedplus              " Copy paste between vim and everything else
set autochdir                          " Your working directory will always be the same as your working directory
set sessionoptions=blank,buffers,curdir,folds,help,options,tabpages,winsize,terminal
set fillchars+=vert:\            "Set vertical split border
let g:floatLf_border = 1
set t_Co=256
set t_ut=
set guicursor+=a:blinkon60

"Disable Built-ins to reduce startup time
let g:loaded_tutor_mode_plugin = 1
let g:loaded_gzip = 1
let g:loaded_tar = 1
let g:loaded_tarPlugin = 1
let g:loaded_zipPlugin = 1
let g:loaded_2html_plugin = 1
let g:loaded_netrw = 1
let g:loaded_netrwPlugin = 1
let g:loaded_matchit = 1
"let g:loaded_matchparen = 1
let g:loaded_spec = 1
