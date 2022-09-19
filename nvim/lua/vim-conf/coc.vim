let g:coc_global_extensions = ['coc-vimlsp', 'coc-translator', 'coc-snippets',  'coc-marketplace',  'coc-explorer',  'coc-json', 'coc-sumneko-lua', 'coc-prettier', 'coc-python', 'coc-go','coc-actions','coc-highlight']
"tab补全
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" Insert <tab> when previous text is space, refresh completion if not.
inoremap <silent><expr> <TAB>
\ coc#pum#visible() ? coc#pum#next(1):
\ <SID>check_back_space() ? "\<Tab>" :
\ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

"回车补全
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#_select_confirm()
      \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

""函数跳转
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gr <Plug>(coc-references)
nmap <silent> <M-enter> <Plug>(coc-fix-current)
nmap <silent> rn <Plug>(coc-rename)
" showSignatureHelp 签名

""报错跳转
nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nmap <silent> gh :call <SID>show_documentation()<CR>

imap <c-l> <Plug>(coc-snippets-expand)


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

let g:coc_highlight_maximum_count = 200
autocmd CursorHold * silent call CocActionAsync('highlight')
"======


