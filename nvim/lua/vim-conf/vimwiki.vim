let g:vimwiki_list = [{'path': '~/Note',
            \ 'syntax': 'markdown', 'ext': '.md'}]
autocmd Filetype markdown let g:indentLine_enabled = 0
autocmd Filetype markdown nmap <c-o> :VimwikiGoBackLink<CR>
autocmd Filetype markdown nmap gd :VimwikiFollowLink<CR>
autocmd Filetype markdown vnoremap i k
" autocmd Filetype markdown nmap <M-j> :VimwikiNextLink<CR>
" autocmd Filetype markdown nmap <M-i> :VimwikiPrevLink<CR>

" autocmd Filetype markdown nmap gp :VimwikiGoBackLink<CR>

