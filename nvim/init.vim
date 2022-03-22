source $HOME/.config/nvim/custom/modify.vim
source $HOME/.config/nvim/custom/hotkey.vim
source $HOME/.config/nvim/custom/setting.vim

nnoremap <silent> tt ciw<C-r>=modify#toggleWord(@")<cr><esc>
" xnoremap <silent> <A-t> s<C-r>=modify#toggleWord(@")<cr><esc>
"-----------------plug插件-----------------
call plug#begin('~/.config/nvim/plugged')

"==
"== vim-table-mode md表格相关的
"==
"Plug 'dhruvasagar/vim-table-mode'
"let g:table_mode_corner_corner='+'
"function! s:isAtStartOfLine(mapping)
"  let text_before_cursor = getline('.')[0 : col('.')-1]
"  let mapping_pattern = '\V' . escape(a:mapping, '\')
"  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
"  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
"endfunction
"
"inoreabbrev <expr> <bar><bar>
"          \ <SID>isAtStartOfLine('\|\|') ?
"          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
"inoreabbrev <expr> __
"          \ <SID>isAtStartOfLine('__') ?
"          \ '<c-o>:silent! TableModeDisable<cr>' : '__'

"==
"== lazygit
"==
Plug 'kdheepak/lazygit.nvim'
noremap <c-g> :LazyGit<CR>
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 1.0 " scaling factor for floating window
let g:lazygit_floating_window_corner_chars = ['╭', '╮', '╰', '╯'] " customize lazygit popup window corner characters
let g:lazygit_use_neovim_remote = 1 " for neovim-remote support

"==
"== 函数引用查询
"==
"Plug 'pechorin/any-jump.vim'
"" Normal mode: Jump to definition under cursor
"nnoremap gr :AnyJump<CR>
"" Visual mode: jump to selected text in visual mode
""xnoremap <leader>j :AnyJumpVisual<CR>
"" Normal mode: open previous opened file (after jump)
"nnoremap gb :AnyJumpBack<CR>
"" Normal mode: open last closed search window again
""nnoremap <leader>al :AnyJumpLastResults<CR>
"" Show line numbers in search rusults
"let g:any_jump_list_numbers = 0

"" Auto search references
"let g:any_jump_references_enabled = 1

"" Auto group results by filename
"let g:any_jump_grouping_enabled = 0

"" Amount of preview lines for each search result
"let g:any_jump_preview_lines_count = 5

"" Max search results, other results can be opened via [a]
"let g:any_jump_max_search_results = 10

"" Prefered search engine: rg or ag
"let g:any_jump_search_prefered_engine = 'rg'


"" Search results list styles:
"" - 'filename_first'
"" - 'filename_last'
"let g:any_jump_results_ui_style = 'filename_first'

"" Any-jump window size & position options
"let g:any_jump_window_width_ratio  = 0.6
"let g:any_jump_window_height_ratio = 0.6
"let g:any_jump_window_top_offset   = 4

"" Customize any-jump colors with extending default color scheme:
"" let g:any_jump_colors = { "help": "Comment" }

"" Or override all default colors
"let g:any_jump_colors = {
"      \"plain_text":         "Comment",
"      \"preview":            "Comment",
"      \"preview_keyword":    "Operator",
"      \"heading_text":       "Function",
"      \"heading_keyword":    "Identifier",
"      \"group_text":         "Comment",
"      \"group_name":         "Function",
"      \"more_button":        "Operator",
"      \"more_explain":       "Comment",
"      \"result_line_number": "Comment",
"      \"result_text":        "Statement",
"      \"result_path":        "String",
"      \"help":               "Comment"
"      \}

"" Disable default any-jump keybindings (default: 0)
"let g:any_jump_disable_default_keybindings = 1

"" Remove comments line from search results (default: 1)
"let g:any_jump_remove_comments_from_results = 1

"" Custom ignore files
"" default is: ['*.tmp', '*.temp']
"let g:any_jump_ignored_files = ['*.tmp', '*.temp']

"" Search references only for current file type
"" (default: false, so will find keyword in all filetypes)
"let g:any_jump_references_only_for_current_filetype = 0

"" Disable search engine ignore vcs untracked files
"" (default: false, search engine will ignore vcs untracked files)
"let g:any_jump_disable_vcs_ignore = 0

"==
"== 文件搜索
"==
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
" nnoremap <c-p> :Leaderf file<CR>
nnoremap <c-f> :LeaderfLine<CR>
"let g:Lf_ShortcutF = '<C-F>'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewCode = 1
let g:Lf_ShowHidden = 1
let g:Lf_ShowDevIcons = 1
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
let g:Lf_CommandMap = {
\   '<C-k>': ['<C-i>'],
\}

"==
"== 状态栏
"==
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme="nord"

"==
"== 主题
"==
"Plug 'flazz/vim-colorschemes'
Plug 'arcticicestudio/nord-vim'


"==
"== NERDtree
"==
Plug 'scrooloose/nerdtree'
map <leader>t :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapOpenSplit = "y"
let NERDTreeMapOpenVSplit = "s"


"==
"== 标签预览
"==
"Plug 'kshenoy/vim-signature'

"==
"== coc插件
"==
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-vimlsp', 'coc-translator', 'coc-snippets', 'coc-pairs', 'coc-marketplace', 'coc-git', 'coc-explorer', 'coc-omnisharp', 'coc-json', 'coc-sumneko-lua', 'coc-python', 'coc-prettier', 'coc-emmet']
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

"函数跳转
nmap <silent> gd <Plug>(coc-definition)
"nmap <silent> gy <Plug>(coc-type-definition)
" nmap <silent> gh <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)
"报错跳转
nmap <silent> gp <Plug>(coc-diagnostic-prev)
nmap <silent> gn <Plug>(coc-diagnostic-next)
nnoremap <silent> gh :call <SID>show_documentation()<CR>

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
"======
"======


"==
"== 回车选词
"==
Plug 'gcmt/wildfire.vim'
nmap <leader><enter> <Plug>(wildfire-quick-select)


"==
"== 选词换字符
"==
"Plug'tpope/vim-surround'

"==
"== 调试器vimspector
"==
Plug 'puremourning/vimspector'
" Plug 'puremourning/vimspector',{'do': 'install_gadget.py --force-enable-csharp --enable-python'}
let g:vimspector_enable_mappings = 'VISUAL_STUDIO'
function! s:read_template_into_buffer(template)
	" has to be a function to avoid the extra space fzf#run insers otherwise
	execute '0r ~/.config/nvim/sample_vimspector_json/'.a:template
endfunction
command! -bang -nargs=* LoadVimSpectorJsonTemplate call fzf#run({
			\   'source': 'ls -1 ~/.config/nvim/sample_vimspector_json',
			\   'down': 20,
			\   'sink': function('<sid>read_template_into_buffer')
			\ })
noremap <leader>vs :tabe .vimspector.json<CR>:LoadVimSpectorJsonTemplate<CR>
noremap <leader>c :VimspectorReset<CR>
"python 需要pip3安装 debugpy 然后在.config/nvim/sample_vimspector_json目录下添加对应模板模板去官网找
"lua 直接装模板就行

"==
"== 当前页搜索插件
"==
" Plug 'dyng/ctrlsf.vim'
" nmap <silent><C-f> <Plug>CtrlSFPrompt
" vmap <silent><C-f> <Plug>CtrlSFVwordPath
" let g:ctrlsf_extra_root_markers = ['.root']
" let g:ctrlsf_default_root = '/Users/rehma/Note/'
" let g:ctrlsf_mapping = {
"             \ "next": "n",
"             \ "prev": "N",
"             \ }

"==
"== 快速选择插件
"==
Plug 'terryma/vim-multiple-cursors'
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'


"==
"==brooth/far.vim 查找插件
"==
"Plug 'brooth/far.vim'


"==
"== fzf
"==
Plug 'junegunn/fzf.vim'
set rtp+=/usr/local/opt/fzf
set rtp+=~/.fzf
" noremap <silent> <C-p> :Files<CR>
noremap <silent> <S-f> :Rg<CR>
" noremap <silent> <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
" noremap <silent> <C-l> :Lines<CR>
noremap <silent> <C-b> :Buffers<CR>
noremap <leader>; :History<CR>
" noremap <leader>; :History:<CR>
let g:fzf_preview_window = 'right:60%'
let g:fzf_commits_log_options = '--graph --color=always --format="%C(auto)%h%d %s %C(black)%C(bold)%cr"'

function! s:list_buffers()
  redir => list
  silent ls
  redir END
  return split(list, "\n")
endfunction

function! s:delete_buffers(lines)
  execute 'bwipeout' join(map(a:lines, {_, line -> split(line)[0]}))
endfunction

command! BD call fzf#run(fzf#wrap({
  \ 'source': s:list_buffers(),
  \ 'sink*': { lines -> s:delete_buffers(lines) },
  \ 'options': '--multi --reverse --bind ctrl-a:select-all+accept'
\ }))
noremap <S-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }


"==
"== 注释插件
"==
Plug 'tpope/vim-commentary'
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Vim Script
"Plug 'folke/which-key.nvim'

"==
"== 空格显示主界面
"==
" Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
" nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
" set timeoutlen=500

"==
"== 主界面
"==
" Plug 'glepnir/dashboard-nvim'
let g:dashboard_custom_header = []
let g:dashboard_default_executive ='fzf'
Plug 'mhinz/vim-startify'
let g:startify_change_to_vcs_root = 1
let g:startify_session_delete_buffers = 1
let g:startify_lists = [
          \ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
          \ { 'type': 'files',     'header': ['   Files']            },
          \ { 'type': 'sessions',  'header': ['   Sessions']       },
          \ { 'type': 'bookmarks', 'header': ['   Bookmarks']      },
          \ ]

let g:startify_bookmarks = [
            \ { 'v': '~/.config/nvim/init.vim' },
            \ { 'z': '~/.zshrc' },
            \ { 'n': '~/Node/index.md' },
            \ '~/Pics',
            \ ]
let g:startify_custom_header = [
        \ ' ____ ____ _  _ _  _   __  ',
        \ '(  _ (  __) )( ( \/ ) / _\ ',
        \ ' )   /) _)) __ ( \/ \/    \',
        \ '(__\_|____)_)(_|_)(_/\_/\_/',
        \]

"==
"== 滚动固定窗口
"==
Plug 'antoinemadec/FixCursorHold.nvim'
let g:cursorhold_updatetime = 100


"==
"== 图标
"==
Plug 'kyazdani42/nvim-web-devicons' " for file icons

"==
"== 项目菜单栏
"==
"Plug 'kyazdani42/nvim-tree.lua'


"==
"== tab切换动画
"==
Plug 'romgrk/barbar.nvim'
let bufferline = get(g:, 'bufferline', {})

" " New tabs are opened next to the currently selected tab.
" " Enable to insert them in buffer number order.
" let bufferline.add_in_buffer_number_order = v:false

" " Enable/disable animations
" let bufferline.animation = v:true

" " Enable/disable auto-hiding the tab bar when there is a single buffer
" let bufferline.auto_hide = v:false

" " Enable/disable current/total tabpages indicator (top right corner)
" let bufferline.tabpages = v:true

" " Enable/disable close button
" let bufferline.closable = v:true

" " Enables/disable clickable tabs
" "  - left-click: go to buffer
" "  - middle-click: delete buffer
" let bufferline.clickable = v:true

" " Excludes buffers from the tabline
" " let bufferline.exclude_ft = ['javascript']
" " let bufferline.exclude_name = ['package.json']

" " Enable/disable icons
" " if set to 'buffer_number', will show buffer number in the tabline
" " if set to 'numbers', will show buffer index in the tabline
" " if set to 'both', will show buffer index and icons in the tabline
" let bufferline.icons = v:true

" " Sets the icon's highlight group.
" " If false, will use nvim-web-devicons colors
" let bufferline.icon_custom_colors = v:false

" Configure icons on the bufferline.
let bufferline.icon_separator_active = ''
let bufferline.icon_separator_inactive = ''
let bufferline.icon_close_tab = ''
let bufferline.icon_close_tab_modified = '●'
let bufferline.icon_pinned = '車'

" If true, new buffers will be inserted at the start/end of the list.
" Default is to insert after current buffer.
" let bufferline.insert_at_start = v:false
" let bufferline.insert_at_end = v:false

" " Sets the maximum padding width with which to surround each tab.
" let bufferline.maximum_padding = 4

" " Sets the maximum buffer name length.
" let bufferline.maximum_length = 30

" " If set, the letters for each buffer in buffer-pick mode will be
" " assigned based on their name. Otherwise or in case all letters are
" " already assigned, the behavior is to assign letters in order of
" " usability (see order below)
" let bufferline.semantic_letters = v:true

" " New buffer letters are assigned in this order. This order is
" " optimal for the qwerty keyboard layout but might need adjustement
" " for other layouts.
" let bufferline.letters =
"   \ 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP'

" let bufferline.no_name_title = v:null

nnoremap cb :BufferClose<CR>



"==
"== 代码主题高亮
"==
" Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Plug 'unblevable/quick-scope'
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"==
"== 项目管理器
"==
" Plug 'ahmedkhalf/project.nvim'
" Plug 'airblade/vim-rooter'
" let g:rooter_manual_only = 1


"==
"== 终端
"==
Plug 'akinsho/toggleterm.nvim'
let g:toggleterm_terminal_mapping = '<c-t>'
autocmd TermEnter term://*toggleterm#*
      \ tnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>

nnoremap <silent><c-t> <Cmd>exe v:count1 . "ToggleTerm"<CR>
inoremap <silent><c-t> <Esc><Cmd>exe v:count1 . "ToggleTerm"<CR>


"==
"== 快速定位插件
"==
Plug 'justinmk/vim-sneak'
map = <Plug>Sneak_s
map \ <Plug>Sneak_S

"==
"== 对齐线
"==
Plug 'Yggdroot/indentLine'
" let g:indentLine_fileType = ['c', 'cpp', 'python', 'lua', 'c#']

"==
"== vimwili
"==
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/Users/rehma/Library/Mobile Documents/com~apple~CloudDocs/Note',
            \ 'syntax': 'markdown', 'ext': '.md'}]
autocmd Filetype markdown let g:indentLine_enabled = 0
autocmd Filetype markdown nmap gb :VimwikiGoBackLink<CR>
" autocmd Filetype markdown nmap gp :VimwikiGoBackLink<CR>

"==
"== markdown预览
"==
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
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


"==
"== web插件
"==
" Plug 'mattn/emmet-vim'

call plug#end()
"===========================插件配置=====================
colorscheme nord

let g:Illuminate_delay = 300
