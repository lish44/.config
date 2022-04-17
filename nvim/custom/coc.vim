let g:coc_global_extensions = ['coc-vimlsp', 'coc-translator', 'coc-snippets', 'coc-pairs', 'coc-marketplace', 'coc-git', 'coc-explorer',  'coc-json', 'coc-sumneko-lua', 'coc-python', 'coc-prettier', 'coc-emmet', 'coc-pyright']
" 'coc-omnisharp',
"tab补全
inoremap <silent><expr> <TAB>
            \ pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~# '\s'
endfunction
"======

""函数跳转
"nmap <silent> gd <Plug>(coc-definition)
""nmap <silent> gy <Plug>(coc-type-definition)
"" nmap <silent> gh <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
""报错跳转
"nmap <silent> gp <Plug>(coc-diagnostic-prev)
"nmap <silent> gn <Plug>(coc-diagnostic-next)
"nnoremap <silent> gh :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

"coc-translator翻译
nmap tw <Plug>(coc-translator-p)
"======

"回车补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

