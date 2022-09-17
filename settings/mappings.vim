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
