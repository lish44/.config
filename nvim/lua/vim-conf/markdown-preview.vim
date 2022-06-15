" autocmd Filetype markdown nmap r <Plug>MarkdownPreview
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 0
" let g:mkdp_browser = 'Vivaldi'
autocmd Filetype markdown inoremap ,m <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap ,n ---<Enter><Enter>
" 加粗
autocmd Filetype markdown inoremap ,b **** <++><Esc>F*hi
" 删除线
autocmd Filetype markdown inoremap ,s ~~~~ <++><Esc>F~hi
" 斜体
autocmd Filetype markdown inoremap ,i ** <++><Esc>F*i
autocmd Filetype markdown inoremap ,d `` <++><Esc>F`i
autocmd Filetype markdown inoremap ,c ```<Enter><++><Enter>```<Enter><Enter><++><Esc>4kA
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
" 颜色强调
autocmd Filetype markdown inoremap ,R <font color=#bf616a></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,G <font color=#a3be8c></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,B <font color=#81a1c1></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,Y <font color=#ebcb8b></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,M <font color=#b48ead></font><Space><++><Esc>2F<i
autocmd Filetype markdown inoremap ,N <font color=#3b4252></font><Space><++><Esc>2F<i
" kbd
autocmd Filetype markdown inoremap ,k <kbd></kbd><++><Esc>F<;i
autocmd Filetype markdown inoremap ,r [return](./index.md)
autocmd Filetype markdown inoremap ,t :-------:

autocmd Filetype markdown vnoremap ,b s**<esc>pa**<esc>
autocmd Filetype markdown vnoremap ,s s~~<esc>pa~~<esc>
autocmd Filetype markdown vnoremap ,i s*<esc>pa*<esc>
autocmd Filetype markdown vnoremap ,d s`<esc>pa`<esc>
autocmd Filetype markdown vnoremap ,R s<font color=#bf616a><esc>pa</font><esc>
autocmd Filetype markdown vnoremap ,G s<font color=#a3be8c><esc>pa</font><esc>
autocmd Filetype markdown vnoremap ,B s<font color=#81a1c1><esc>pa</font><esc>
autocmd Filetype markdown vnoremap ,Y s<font color=#ebcb8b><esc>pa</font><esc>
autocmd Filetype markdown vnoremap ,M s<font color=#b48ead><esc>pa</font><esc>
autocmd Filetype markdown vnoremap ,N s<font color=#3b4252><esc>pa</font><esc>

" #0aa858 r
" #f4433c g
" #4285f4 b
" #ffbc32 y

" syntax link https://markdown.com.cn/extended-syntax/heading-ids.html
