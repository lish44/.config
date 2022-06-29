" let g:tagbar_type_go = {
"     \ 'ctagstype': 'go',
"     \ 'kinds' : [
"         \'p:package',
"         \'f:function',
"         \'v:variables',
"         \'t:type',
"         \'c:const'
"     \]
" \}

" 要装ctags xcode的不行 brew install ctags 位置在/usr/local/bin/ctags
" 需要配到环境变量去
" 也可手动指定 g:tagbar_ctags_bin = ‘/usr/local/bin/ctags’
