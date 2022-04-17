let g:vimwiki_list = [{'path': '~/Users/rehma/Library/Mobile Documents/com~apple~CloudDocs/Note',
            \ 'syntax': 'markdown', 'ext': '.md'}]
autocmd Filetype markdown let g:indentLine_enabled = 0
autocmd Filetype markdown nmap gb :VimwikiGoBackLink<CR>
" autocmd Filetype markdown nmap gp :VimwikiGoBackLink<CR>

