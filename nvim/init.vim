" source $HOME/.config/nvim/custom/modify.vim
" nnoremap <silent> <leader>t ciw<C-r>=modify#toggleWord(@")<cr><esc>
" xnoremap <silent> <A-t> s<C-r>=modify#toggleWord(@")<cr><esc>
source $HOME/.config/nvim/custom/hotkey.vim
source $HOME/.config/nvim/custom/setting.vim

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
Plug 'pechorin/any-jump.vim'
" Normal mode: Jump to definition under cursor
nnoremap gr :AnyJump<CR>
" Visual mode: jump to selected text in visual mode
"xnoremap <leader>j :AnyJumpVisual<CR>
" Normal mode: open previous opened file (after jump)
nnoremap gb :AnyJumpBack<CR>
" Normal mode: open last closed search window again
"nnoremap <leader>al :AnyJumpLastResults<CR>
" Show line numbers in search rusults
let g:any_jump_list_numbers = 0

" Auto search references
let g:any_jump_references_enabled = 1

" Auto group results by filename
let g:any_jump_grouping_enabled = 0

" Amount of preview lines for each search result
let g:any_jump_preview_lines_count = 5

" Max search results, other results can be opened via [a]
let g:any_jump_max_search_results = 10

" Prefered search engine: rg or ag
let g:any_jump_search_prefered_engine = 'rg'


" Search results list styles:
" - 'filename_first'
" - 'filename_last'
let g:any_jump_results_ui_style = 'filename_first'

" Any-jump window size & position options
let g:any_jump_window_width_ratio  = 0.6
let g:any_jump_window_height_ratio = 0.6
let g:any_jump_window_top_offset   = 4

" Customize any-jump colors with extending default color scheme:
" let g:any_jump_colors = { "help": "Comment" }

" Or override all default colors
let g:any_jump_colors = {
      \"plain_text":         "Comment",
      \"preview":            "Comment",
      \"preview_keyword":    "Operator",
      \"heading_text":       "Function",
      \"heading_keyword":    "Identifier",
      \"group_text":         "Comment",
      \"group_name":         "Function",
      \"more_button":        "Operator",
      \"more_explain":       "Comment",
      \"result_line_number": "Comment",
      \"result_text":        "Statement",
      \"result_path":        "String",
      \"help":               "Comment"
      \}

" Disable default any-jump keybindings (default: 0)
let g:any_jump_disable_default_keybindings = 1

" Remove comments line from search results (default: 1)
let g:any_jump_remove_comments_from_results = 1

" Custom ignore files
" default is: ['*.tmp', '*.temp']
let g:any_jump_ignored_files = ['*.tmp', '*.temp']

" Search references only for current file type
" (default: false, so will find keyword in all filetypes)
let g:any_jump_references_only_for_current_filetype = 0

" Disable search engine ignore vcs untracked files
" (default: false, search engine will ignore vcs untracked files)
let g:any_jump_disable_vcs_ignore = 0

"==
"== 文件搜索
"==
Plug 'Yggdroot/LeaderF', { 'do': ':LeaderfInstallCExtension' }
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
map tt :NERDTreeMirror<CR>
map tt :NERDTreeToggle<CR>
let NERDTreeMapOpenExpl = ""
let NERDTreeMapOpenSplit = "y"
let NERDTreeMapOpenVSplit = "s"

"==
"== vimwili
"==
Plug 'vimwiki/vimwiki'
let g:vimwiki_list = [{'path': '~/Note',
            \ 'syntax': 'markdown', 'ext': '.md'}]

"==
"== 标签预览
"==
"Plug 'kshenoy/vim-signature'

"==
"== coc插件
"==
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-vimlsp', 'coc-translator', 'coc-snippets', 'coc-pairs', 'coc-marketplace', 'coc-git', 'coc-explorer', 'coc-omnisharp', 'coc-json', 'coc-sumneko-lua', 'coc-python']
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
"nmap <silent> gi <Plug>(coc-implementation)
"nmap <silent> gr <Plug>(coc-references)
"报错跳转
nmap <silent> g[ <Plug>(coc-diagnostic-prev)
nmap <silent> g] <Plug>(coc-diagnostic-next)

"coc-translator翻译
nmap tw <Plug>(coc-translator-p)
"======

"回车补全
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
"======


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
"Plug 'puremourning/vimspector',{'do': 'install_gadget.py --force-enable-csharp'}
"let g:vimspector_enable_mappings = 'VISUAL_STUDIO'

"==
"== 全局搜索插件
"==
Plug 'dyng/ctrlsf.vim'
nmap <silent><leader>fw <Plug>CtrlSFPrompt
vmap <silent><leader>fw <Plug>CtrlSFVwordPath
let g:ctrlsf_extra_root_markers = ['.root']
let g:ctrlsf_default_root = '/Users/rehma/Note/'
let g:ctrlsf_mapping = {
            \ "next": "n",
            \ "prev": "N",
            \ }

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
nnoremap <c-p> :Leaderf file<CR>
" noremap <silent> <C-p> :Files<CR>
noremap <silent> <C-f> :Rg<CR>
noremap <silent> <C-h> :History<CR>
"noremap <C-t> :BTags<CR>
" noremap <silent> <C-l> :Lines<CR>
noremap <silent> <C-b> :Buffers<CR>
noremap <leader>; :History:<CR>
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
"noremap <c-d> :BD<CR>

let g:fzf_layout = { 'window': { 'width': 0.9, 'height': 0.8 } }


"==
"== 注释插件
"==
Plug 'tpope/vim-commentary'
nnoremap <space>/ :Commentary<CR>
vnoremap <space>/ :Commentary<CR>

" Vim Script
"Plug 'folke/which-key.nvim'
Plug 'liuchengxu/vim-which-key', { 'on': ['WhichKey', 'WhichKey!'] }
nnoremap <silent> <leader> :WhichKey '<Space>'<CR>
set timeoutlen=500

"==
"== 主界面
"==
Plug 'glepnir/dashboard-nvim'
let g:dashboard_default_executive ='fzf'


"==
"== 滚动固定窗口
"==
Plug 'antoinemadec/FixCursorHold.nvim'
let g:cursorhold_updatetime = 100


"==
"== 
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

"==
"== 代码主题高亮
"==
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}  " We recommend updating the parsers on update

"Plug 'unblevable/quick-scope'
"let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

"==
"== 项目管理器
"==
Plug 'ahmedkhalf/project.nvim'

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
map <leader>s <Plug>Sneak_s
map <leader>S <Plug>Sneak_S


call plug#end()
"===========================插件配置=====================
colorscheme nord

let g:Illuminate_delay = 300


" w忽略标点 vscode无效
"function! JumpToNextWord()
"    normal w
"    while strpart(getline('.'), col('.')-1, 1) !~ '\w'
"        normal w
"    endwhile
"endfunction
"nnoremap <silent> ,w :call JumpToNextWord()<CR>
"
