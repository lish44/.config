"================================基础配置=============================
autocmd BufWritePost $MYVIMRC source $MYVIMRC   "让配置变更立即生效
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif "记录光标当前位置下次打开保持
syntax on
set guifont=Menlo:h14                           "字体
set nocompatible                                "关闭兼容模式
set autoread                                    "文件被外部改动后, 自动加载
set nobackup                                    "不生成备份文件
set noswapfile                                  "不生成临时文件
set noundofile                                  "不生成 undo 文件
set number                                      "显示行号
set relativenumber                              "绝对行号
set incsearch                                   "开启实时搜索功能
set ignorecase                                  "搜索时大小写不敏感
set scrolloff=4                                 "永远保持x行
set updatetime=100                              "响应更快
set shortmess+=c                                "补全的时候少一些东西
set hidden                                      "不保存可以跳转文件，作用就是保存在缓冲区中
set nocursorline                                  "显示行
set wrap                                        "tab menu设置
set mouse=a
set encoding=utf-8
set termencoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,utf-16,gbk,big5,gb18030,latin1
set wildmenu
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set clipboard=unnamedplus                       "copy everthing
" set termguicolors
set ff=unix
filetype on
filetype indent on
filetype plugin on " 根据侦测到的不同类型加载对应的插件
filetype plugin indent on
let &t_ut=''
let g:python_host_prog='/System/Library/Frameworks/Python.framework/Versions/2.7/bin/python2.7'
let g:python3_host_prog='/usr/local/bin/python3'
let g:ruby_host_prog = '/usr/local/opt/ruby/bin/ruby'
"=================================================================
