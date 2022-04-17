call plug#begin('~/.config/nvim/plugged')

"== 状态&栏主题
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'arcticicestudio/nord-vim'
"Plug 'flazz/vim-colorschemes'
"== lazygit
Plug 'kdheepak/lazygit.nvim'
"== 注释
Plug 'tpope/vim-commentary'
"== NERDtree
Plug 'scrooloose/nerdtree'
"== fzf
Plug 'junegunn/fzf.vim'
"== 选词
" Plug 'gcmt/wildfire.vim'
"== omnisharp
Plug 'OmniSharp/omnisharp-vim'
"== coc插件
Plug 'neoclide/coc.nvim', {'branch': 'release'}
"== vimwili
Plug 'vimwiki/vimwiki'
"== markdown预览
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
"== 代码检测
Plug 'dense-analysis/ale'
"== 主界面
Plug 'mhinz/vim-startify'
"== 代码主题高亮
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
"== 彩虹括号
Plug 'luochen1990/rainbow'

"== 项目搜索 类似于fzf
" Plug 'nvim-lua/plenary.nvim'
" Plug 'nvim-telescope/telescope.nvim'


"== vim-table-mode md表格相关的
"Plug 'dhruvasagar/vim-table-mode'
"== 函数引用查询
"Plug 'pechorin/any-jump.vim'
"== 文件搜索
" Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
"== 标签预览
"Plug 'kshenoy/vim-signature'
"== 选词换字符
"Plug'tpope/vim-surround'
"== 调试器vimspector
" Plug 'puremourning/vimspector'
" Plug 'puremourning/vimspector',{'do': 'install_gadget.py --force-enable-csharp --enable-python'}
"== 当前页搜索插件
" Plug 'dyng/ctrlsf.vim'
"== 快速选择插件
" Plug 'terryma/vim-multiple-cursors'
"==brooth/far.vim 查找插件
"Plug 'brooth/far.vim'
" Vim Script
"Plug 'folke/which-key.nvim'
"== 空格显示主界面
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
"== 主界面
" Plug 'glepnir/dashboard-nvim'
"== 滚动固定窗口
" Plug 'antoinemadec/FixCursorHold.nvim'
"== 图标
" Plug 'kyazdani42/nvim-web-devicons' " for file icons
"== 项目菜单栏
"Plug 'kyazdani42/nvim-tree.lua'
"== tab切换动画
" Plug 'romgrk/barbar.nvim'
"Plug 'unblevable/quick-scope'
"== 项目管理器
" Plug 'ahmedkhalf/project.nvim'
" Plug 'airblade/vim-rooter'
"== 终端
" Plug 'akinsho/toggleterm.nvim'
"== 快速定位插件
" Plug 'justinmk/vim-sneak'
"== 对齐线
" Plug 'Yggdroot/indentLine'
"== web插件
" Plug 'mattn/emmet-vim'
"== 代码检测
" Plug 'dense-analysis/ale'

call plug#end()

