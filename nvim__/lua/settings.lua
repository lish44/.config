--================================基础配置=============================
--autocmd BufWritePost $MYVIMRC source $MYVIMRC -- 让配置变更立即生效

vim.o.guifont = "Menlo:h15"		--字体
vim.o.pumheight = 10			--弹出菜单更小
vim.o.autoread = true			--文件被外部改动后, 自动加载
vim.o.number = true
vim.o.relativenumber = true
vim.o.incsearch = true			--开启实时搜索功能
vim.o.scrolloff = 4				--永远保持x行
vim.o.cursorline = true			--line
vim.o.wrap = false				--tab menu设置
vim.o.splitbelow = true			--水平分割自动在下
vim.o.splitright = true			--左右分割自动在右
vim.o.cmdheight = 2
vim.o.wildmenu = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.smarttab = true			--智能知道4或2
vim.o.updatetime = 100			--响应更快
vim.o.hidden = true				--不保存可以跳转文件，作用就是保存在缓冲区中
vim.o.clipboard = "unnamedplus" --copy everthing
vim.o.ff = "unix"
vim.o.showtabline = 2			--总是显示tab
vim.o.mouse = "a"
vim.o.showmode = false
vim.o.compatible = false		--关闭兼容模式
vim.o.backup = false			--不生成备份文件
vim.o.swapfile = false			--不生成临时文件
vim.o.undofile = false			--不生成 undo 文件
vim.o.ignorecase = true			--搜索时大小写不敏感
vim.o.compatible = false		--关闭兼容模式
vim.o.shortmess = "c"			--补全的时候少一些东西
vim.o.iskeyword = "-"			--使破折号为文本对象
vim.o.encoding = "utf-8"
vim.o.fileencoding = "utf-8"
vim.o.fileencodings="ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1"

--vim.o.t_Co="256"
--au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif --记录光标当前位置下次打开保持
--syntax on
--filetype on
--filetype indent on
--filetype plugin on -- 根据侦测到的不同类型加载对应的插件
--filetype plugin indent on
--
--let &t_ut=''
--let g:python_host_prog='/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7'
--let g:python3_host_prog='/usr/local/bin/python3'
--let g:ruby_host_prog = '/usr/local/opt/ruby/bin/ruby'
----=================================================================
