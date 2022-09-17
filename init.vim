"{{{ (A) First things first
set shell=/bin/zsh
if has("termguicolors")
    set termguicolors
endif
"}}}

"{{{ (B) Keyboard Mappings

" noh - no highlight
nnoremap <esc> :noh <CR>

"Select everything
nnoremap <M-a> ggVG
        
" set leader key
let mapleader = "\<Space>"

" Better nav for omnicomplete
inoremap <expr> <c-j> ("\<C-n>")
inoremap <expr> <c-k> ("\<C-p>")

" I hate escape more than anything else
inoremap jk <Esc>
inoremap kj <Esc>

" Easy CAPS
inoremap <c-u> <ESC>viwUi
nnoremap <c-u> viwU<Esc>
vnoremap <c-u> viwU<Esc>


"Alternate way to save"
nnoremap <C-s> :w<CR>
" Alternate way to quit
nnoremap <C-Q> :qa!<CR>
" Use control-c instead of escape
nnoremap <C-c> <Esc>

" <TAB>: completion for coc.
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1):
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Confirm with Enter
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"Better tabbing" 
nnoremap <C-t> :tabnew<CR>
"nnoremap <F28> :tabs<CR>
nnoremap <TAB> gt<CR>
nnoremap <S-TAB> gT<CR>

" Better window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da

"Terminal
nnoremap <F3> :10sp \| term <CR>
nnoremap <F4> :tabnew \| term <CR>

"Better clipboard copy/paste
vnoremap <C-c> "+y
vnoremap <C-v> "+p

"Remap ; to :
map ; :
noremap ;; ;

"Sneak Remappings
map <C-Up> <Plug>Sneak_,
map <C-Down> <Plug>Sneak_;

"Zoom
nmap <Leader>,zo :tabnew %<CR>
nmap <Leader>,zc :tabclose<CR>

"Fuck Ctrl Y
map <C-Z> <Nop>
let g:user_emmet_leader_key='<C-Z>'

"You can't stop me
cmap w!! w !sudo tee %

"Exit from terminal mode
tnoremap <Esc> <C-\><C-n>
"}}}

"{{{ (C) General Settings
"syntax enable                          " Enables syntax highlighing (can be disabled due to the plugins)
set hidden                              " Required to keep multiple buffers open multiple buffers
set nowrap                              " Wrap Lines
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
let g:dashboard_session_directory='/home/fjs/.config/nvim/sessions'
set fillchars+=vert:\┃            "Set vertical split border▋██┃
let g:floatLf_border = 1
set t_Co=256
set t_ut=
set guicursor+=a:blinkon60

"Highlights
hi CursorLine guibg=#181B25

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
"}}}

"{{{ (D) Plugin Settings

"LUA 
lua require('plugins')
lua require('load')

source ~/.config/nvim/pluginsettings.vim
colorscheme onedark

"}}}

"{{{ (E) Functions
augroup AuFunctions
    autocmd VimEnter * if @% == 'init.vim' | set foldmethod=marker  | endif "Sets folds on this file
    "Compile and execute commands per ft
	autocmd FileType c,cpp nnoremap <buffer> <F5> :w <CR> :10sp \| term ./%< <CR>
	autocmd FileType c,cpp nnoremap <buffer> <F8> :w <CR> :!g++ % -o %< <CR>
	autocmd FileType python nnoremap <buffer> <F5> :w <CR> :10sp \| term python3 % <CR>
	autocmd FileType java nnoremap <buffer> <F5> :w <CR> :10sp \| term ./%< <CR>
	autocmd FileType java nnoremap <buffer> <F8> :w <CR> :!javalli <CR>
    "Starts terminal mode on insert mode
	autocmd TermOpen * startinsert
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable autocomment on new line
augroup END

" COMMANDS
command AllmanFormat :!astyle -A1 %
command JavaFormat :!astyle -A2 %
command KrFormat :!astyle -A3 %
command GnuFormat :!astyle -A7 %
command Gdb :!gdb -tui %<
command Src :source Session.vim | stopinsert
command Light : set background=light | colorscheme PaperColor

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

"}}}
