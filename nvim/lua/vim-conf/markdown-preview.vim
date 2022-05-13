autocmd Filetype markdown nmap r <Plug>MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
let g:mkdp_browser = 'Google Chrome'
autocmd Filetype markdown inoremap ,m <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
autocmd Filetype markdown inoremap ,b ____ <++><Esc>F_hi
" 字画横杠
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
" 斜体
autocmd Filetype markdown inoremap ,i __ <++><Esc>F_i
" 强调背景
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```Csharp<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
autocmd Filetype markdown inoremap ,h ====<Space><++><Esc>F=hi
autocmd Filetype markdown inoremap ,p ![](../pic/<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,a [](<++>) <++><Esc>F[a
autocmd Filetype markdown inoremap ,l --------<Enter>
autocmd Filetype markdown inoremap ,z []()[<++>](<++>)<Esc>F(;a
" 子标题
autocmd Filetype markdown inoremap ,1 #<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,2 ##<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,3 ###<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,4 ####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,5 #####<Space><Enter><++><Esc>kA
autocmd Filetype markdown inoremap ,6 ######<Space><Enter><++><Esc>kA
" 带颜色强调
autocmd Filetype markdown inoremap ,R <font color=#f4433c></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,G <font color=#0aa858></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,B <font color=#4285f4></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,Y <font color=#ffbc32></font><Space><++><Esc>2F<i
" kbd
autocmd Filetype markdown inoremap ,k <kbd></kbd><++><Esc>F<;i

autocmd Filetype markdown inoremap ,r [return](./index.md)
autocmd Filetype markdown inoremap ,t :-------:
