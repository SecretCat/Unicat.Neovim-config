" NOTE: You can use other key to expand snippet.

" Expand
imap <expr> <C-b>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-b>'
smap <expr> <C-b>   vsnip#expandable()  ? '<Plug>(vsnip-expand)'         : '<C-b>'

" Expand or jump
imap <expr> <C-b>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-b>'
smap <expr> <C-b>   vsnip#available(1)  ? '<Plug>(vsnip-expand-or-jump)' : '<C-b>'

" Jump forward or backward
imap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
smap <expr> <Tab>   vsnip#jumpable(1)   ? '<Plug>(vsnip-jump-next)'      : '<Tab>'
imap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'
smap <expr> <S-Tab> vsnip#jumpable(-1)  ? '<Plug>(vsnip-jump-prev)'      : '<S-Tab>'

" Select or cut text to use as $TM_SELECTED_TEXT in the next snippet.
" See https://github.com/hrsh7th/vim-vsnip/pull/50
nmap        s   <Plug>(vsnip-select-text)
xmap        s   <Plug>(vsnip-select-text)
nmap        S   <Plug>(vsnip-cut-text)
xmap        S   <Plug>(vsnip-cut-text)

let g:vsnip_snippet_dirs = ['~/.config/nvim/snippets']
let g:vsnip_snippet_dir = '/root/Library/nvim/snippets'
