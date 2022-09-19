au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "记录光标当前位置下次打开保持


" let g:smartim_default = 'com.apple.keylayout.ABC'


"临时禁用输入法切换插件，可以极大提升宏运行的效率
" nnoremap <silent><leader>s0 <cmd>let g:smartim_disable = 1<CR>
"开启输入法切换插件
" nnoremap <silent><leader>s1 <cmd>let g:smartim_disable = 0<CR>


" if exists('+termguicolors')
"   let &t_8f="\<Esc>[38;2;%lu;%lu;%lum"
"   let &t_8b="\<Esc>[48;2;%lu;%lu;%lum"
"   set termguicolors
" endif
