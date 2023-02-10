let g:vimwiki_list = [{'path': '~/Note/note',
            \ 'syntax': 'markdown', 'ext': '.md'}]

let g:vimwiki_ext = '.md'
autocmd Filetype markdown let g:indentLine_enabled = 0
" disable table mappings
let g:vimwiki_key_mappings = {
            \ 'all_maps': 1,
            \ 'global': 1,
            \ 'headers': 1,
            \ 'text_objs': 0,
            \ 'table_format': 1,
            \ 'table_mappings': 0,
            \ 'lists': 1,
            \ 'links': 1,
            \ 'html': 1,
            \ 'mouse': 0,
            \ }


autocmd Filetype markdown nmap <c-o> :VimwikiGoBackLink<CR>
autocmd Filetype markdown nmap gd :VimwikiFollowLink<CR>
" autocmd Filetype markdown nmap <M-j> :VimwikiNextLink<CR>
" autocmd Filetype markdown nmap <M-i> :VimwikiPrevLink<CR>

" autocmd Filetype markdown nmap gp :VimwikiGoBackLink<CR>
autocmd Filetype markdown nmap <leader>wl :VimwikiToggleListItem<CR>


