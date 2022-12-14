" TODO put plugin settings in their appropriate files in lua/settings and require them in packer config

" Blankline
let g:indent_blankline_filetype_exclude = ['help','dashboard','terminal']
"Disable lsp for ale
let g:ale_disable_lsp = 1

let g:rainbow_active = 1 "Activate Rainbow
let g:sneak#s_next = 1 "Use s and S to navigate Sneak

"Keep gutter open for ALE
let g:ale_sign_column_always = 1

"ALE Fixers
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'c': ['astyle', 'clang-format', 'clangtidy', 'uncrustify'],
\   'cpp': ['astyle', 'clang-format', 'clangtidy', 'uncrustify'],
\   'java': ['uncrustify', 'google_java_format'],
\}


"Rainbow colors
let g:rainbow_conf = {
                  \'guifgs': ['dodgerblue','seagreen2','purple2','mediumorchid1','darkorange2','gold','firebrick1']
\}
"Set Coc colors
hi CocMenuSel guibg=#1e41b3
hi CocFloating guibg=#181B25
imap <C-l> <Plug>(coc-snippets-expand)

"Enable signify highlight
let g:signify_line_highlight = 0

"UltiSnips path
let g:UltiSnipsSnippetsDir="~/.config/nvim/snips"
let g:UltiSnipsSnippetDirectories=["snips", "UltiSnips"]
