local opt = { noremap = true, silent = true }

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', opt)

vim.g.mapleader = ' '

vim.api.nvim_set_keymap('n', '<Leader>h', ':set hlsearch!<CR>', opt)
vim.api.nvim_set_keymap('n', '<Leader>e', ':Lexplore<CR>', opt)

-- 退出保存
vim.api.nvim_set_keymap('n', 'q', ':q<CR>', opt)
vim.api.nvim_set_keymap('n', 'Q', ':q!<CR>', opt)
vim.api.nvim_set_keymap('n', '<C-s>', ':w<CR>', opt)

-- 宏映射更改
vim.api.nvim_set_keymap('n', '<Leader>q', 'q', opt)

-- move
vim.api.nvim_set_keymap('n', 'i', 'k', opt)
vim.api.nvim_set_keymap('n', 'k', 'i', opt)
vim.api.nvim_set_keymap('n', 'H', '^', opt)
vim.api.nvim_set_keymap('n', 'L', '$', opt)
vim.api.nvim_set_keymap('n', 'J', '4j', opt)
vim.api.nvim_set_keymap('n', 'I', '4k', opt)

vim.api.nvim_set_keymap('v', 'i', 'k', opt)
vim.api.nvim_set_keymap('v', 'k', 'i', opt)
vim.api.nvim_set_keymap('v', 'K', 'I', opt)
vim.api.nvim_set_keymap('v', 'H', '^', opt)
vim.api.nvim_set_keymap('v', 'L', '$', opt)
vim.api.nvim_set_keymap('v', 'J', '4j', opt)
vim.api.nvim_set_keymap('v', 'I', '4k', opt)

vim.api.nvim_set_keymap('i', 'jj', '<esc>', opt)
vim.api.nvim_set_keymap('i', '<C-s>', '<esc>:w<enter>', opt)



-- tab
vim.api.nvim_set_keymap('n', '<TAB>', ':bnext<CR>', opt)
vim.api.nvim_set_keymap('n', '<S-TAB>', ':bprevious<CR>', opt)

-- windows
--vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', {silent = true})
--vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', {silent = true})
