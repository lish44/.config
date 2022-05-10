"=============================更改按键映射=========================
"===
"=== 普通模式
"===
"<leader> 映射成 空格
let mapleader=" "
" 保存文件
nnoremap <c-s> :w<cr>
" 保存并退出文件
"nnoremap <leader>wq :wq<cr>
" 退出文件
nnoremap q :q<cr>

nnoremap <leader>q q
" 不做任何保存直接退出
nnoremap Q :q!<CR>

"分屏
nnoremap tl :set splitright<CR> :vsplit<CR>
nnoremap th :set nosplitright<CR>:vsplit<CR>
nnoremap ti :set nosplitbelow<CR>:split<CR>
nnoremap tj :set splitbelow<CR>:split<CR>
nnoremap to :only<CR>
nnoremap tc :tabclose<CR>

"分屏后光标切换
nnoremap <LEADER>i <C-w>k
nnoremap <LEADER>j <C-w>j
nnoremap <LEADER>h <C-w>h
nnoremap <LEADER>l <C-w>l
" r直接替换复制寄存器里的东西
nnoremap <silent>r ciw<esc>"+p
" 复制到系统剪切板
noremap <LEADER>y "+y
" noremap <LEADER>p "+p

" noremap <command>v "+p

" 直接更该括号的内容
nnoremap cd $F(lci)
"nnoremap cv $F(wWcw
"nnoremap c2 $F(f,wWcw
"nnoremap c3 $F(f,;wWcw



"===
"=== 普通模式，视图模式
"===
" 对调ik
noremap <silent> i k
noremap <silent> k i
noremap <silent> K I
" 行尾
noremap <silent> L $
" 行首
noremap <silent> H ^
noremap <silent> I 4k
noremap <silent> J 4j
noremap <silent> <C-a> gg<S-v>G
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>

"===
"===视图模式
"===
" vnoremap <silent> i k
" vnoremap <silent> k i
" vnoremap <silent> K I
" vnoremap <silent> I 3k
" vnoremap <silent> J 3j
" vnoremap <silent> L $
" vnoremap <silent> H ^


"===
"===插入模式
"===
inoremap jj <Esc>
inoremap <c-f> <right>
inoremap <c-q> <Home>
inoremap <c-e> <End>
inoremap <c-b> <left>
inoremap <c-d> <del>
inoremap <c-s> <esc>:w<cr>
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"

"===
"=== 全局映射
"===
"控制分屏大小
"map <up> :res +5<CR>
"map <down> :res -5<CR>
"map <left> :vertical resize-5<CR>
"map <right> :vertical resize+5<CR>
"分屏交换
"map tc <C-w>r
"map tv <C-w>t<C-w>H
"map tr <C-w>t<C-w>K

" 自定义配置
" 括号匹配
nnoremap zx %
nnoremap cc ciw

nnoremap + <C-a>
nnoremap - <C-x>
