augroup AuFunctions
    autocmd VimEnter * if @% == 'init.vim' | set foldmethod=marker  | endif "Sets folds on this file
    "Compile and execute commands per ft
	autocmd FileType c,cpp nnoremap <buffer> <F5> :w <CR> :10sp \| term ./%< <CR>
	autocmd FileType c,cpp nnoremap <buffer> <F8> :w <CR> :!g++ % -o %< <CR>
	autocmd FileType python nnoremap <buffer> <F5> :w <CR> :10sp \| term python3 % <CR>
	autocmd FileType java nnoremap <buffer> <F5> :w <CR> :10sp \| term ./%< <CR>
    "Starts terminal mode on insert mode
	autocmd TermOpen * startinsert
    autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o " Disable autocomment on new line
augroup END

augroup Highlights
    autocmd VimEnter * hi VertSplit guibg=#21283B "Sets vsplit border colors
    autocmd VimEnter * hi CursorLine guibg=#181B25 "Sets current line color
    autocmd VimEnter * hi Search guibg=#0040bf guifg=#f0f0f0
    autocmd VimEnter * hi IncSearch guibg=#8300bf guifg=#f0f0f0
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

" MACROS

let @a = "ggVG\"*y"
