let g:startify_change_to_vcs_root = 1
let g:startify_session_delete_buffers = 1
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'n': '~/Node/index.md' },
            \ '~/Pics',
            \ ]
let g:startify_custom_header = [
        \ ' ____ ____ _  _ _  _   __  ',
        \ '(  _ (  __) )( ( \/ ) / _\ ',
        \ ' )   /) _)) __ ( \/ \/    \',
        \ '(__\_|____)_)(_|_)(_/\_/\_/',
        \]

