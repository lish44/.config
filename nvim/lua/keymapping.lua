-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

local opt = { noremap = true, silent = true }
local map = vim.api.nvim_set_keymap

map('', '<space>', '<NOP>', opt)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- map('n', '<Leader>h', ':set hlsearch!<CR>', opt)
-- map('n', '<Leader>e', ':Lexplore<CR>', opt)

-- 退出保存
map('n', 'q', ':q<cr>', opt)
map('n', 'Q', ':q!<cr>', opt)
map('n', '<c-s>', ':w<cr>', opt)

-- 宏映射更改
map('n', '<leader>q', 'q', opt)

-- move
map('n', 'i', 'k', opt)
map('n', 'k', 'i', opt)
map('n', 'K', 'I', opt)
map('n', 'H', '^', opt)
map('n', 'L', '$', opt)
map('n', 'J', '4j', opt)
map('n', 'I', '4k', opt)
-- custom oder
map('n', 'cc', 'ciw', opt)
map('n', 'cd', '$F(lci)', opt)
map('n', '+', '<c-a>', opt)
map('n', '-', '<c-x>', opt)
map('n', 'zf', '%', opt)
-- tab
map('n', '<TAB>', ':bnext<CR>', opt)
map('n', '<S-TAB>', ':bprevious<CR>', opt)
-- 分屏操作
map('n', '<leader>i', '<c-w>k', opt)
map('n', '<leader>j', '<c-w>j', opt)
map('n', '<leader>h', '<c-w>h', opt)
map('n', '<leader>l', '<c-w>l', opt)
-- map('n', 'tw', '<c-w>c', opt)

map('n', 'tl', ':set splitright<cr> :vsplit<cr>', opt)
map('n', 'th', ':set nosplitright<cr> :vsplit<cr>', opt)
map('n', 'ti', ':set nosplitright<cr> :split<cr>', opt)
map('n', 'tj', ':set splitright<cr> :split<cr>', opt)
map('n', 'to', ':only<cr>', opt)
map('n', 'tc', ':tabclose<cr>', opt)
map('n', 'rr', 'ciw<c-r>0<esc>', opt)
map('n', 'R', 'ciw<esc>"+p', opt)
map('n', 'cb', ':bd<cr>', opt)
map('n', '<leader>p', '"+p', opt)

map('v', 'Y', '"+y', opt)
-- 分屏移动
-- Resize with arrows
map("n", "<M-Down>", ":resize -2<CR>", opt)
map("n", "<M-Up>", ":resize +2<CR>", opt)
map("n", "<M-Left>", ":vertical resize +2<CR>", opt)
map("n", "<M-Right>", ":vertical resize -2<CR>", opt)


map('v', 'i', 'k', opt)
map('v', 'k', 'i', opt)
map('v', 'K', 'I', opt)
map('v', 'H', '^', opt)
map('v', 'L', '$', opt)
map('v', 'J', '4j', opt)
map('v', 'I', '4k', opt)
-- 在visual 模式里粘贴不复制
map("v", "p", '"_dP', opt)

map('i', 'jj', '<esc>', opt)
map('i', '<C-s>', '<esc>:w<enter>', opt)
map('i', '<C-d>', '<del>', opt)
map('i', '<C-f>', '<right>', opt)
map('i', '<C-b>', '<left>', opt)
map('i', '<C-e>', '<end>', opt)

map("x", "<c-j>", ":move '>+1<CR>gv-gv", opt)
map("x", "<c-k>", ":move '<-2<CR>gv-gv", opt)


vim.keymap.set('i', '<Tab>', function()
	return vim.fn.pumvisible == 1 and '<C-N>' or '<Tab>'
end, { expr = true })


-- plugins
map("n", "<C-t>", ":Telescope find_files<CR>", opt)
-- map('n', '<c-l>', '<CMD> LazyGit<CR>', opt)
map("n", "<c-g>",
	"<cmd>lua require('telescope').extensions.live_grep_raw.live_grep_raw(require('telescope.themes').get_ivy())<cr>", opt)
map("n", "<c-h>", ":BufferLineCyclePrev<CR>", opt)
map("n", "<c-l>", ":BufferLineCycleNext<CR>", opt)
