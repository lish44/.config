local status_ok, comment = pcall(require, "Comment")
if not status_ok then
	vim.notify("Comment not found!")
	return
end

local opt = { expr = true, remap = true }

-- Toggle using count
vim.keymap.set('n', '<leader>/', "v:count == 0 ? '<Plug>(comment_toggle_current_linewise)' : '<Plug>(comment_toggle_linewise_count)'", opt)
vim.keymap.set('n', 'gbc', "v:count == 0 ? '<Plug>(comment_toggle_current_blockwise)' : '<Plug>(comment_toggle_blockwise_count)'", opt)

-- Toggle in Op-pending mode
-- vim.keymap.set('n', '<leader>/', '<Plug>(comment_toggle_linewise)')
-- vim.keymap.set('n', 'gb', '<Plug>(comment_toggle_blockwise)')

-- Toggle in VISUAL mode
vim.keymap.set('x', '<leader>/', '<Plug>(comment_toggle_linewise_visual)')
vim.keymap.set('x', 'gb', '<Plug>(comment_toggle_blockwise_visual)')

-- # NORMAL mode

-- Linewise toggle current line using C-/
-- vim.keymap.set('n', '<C-_>', '<CMD>lua require("Comment.api").toggle_current_linewise()<CR>')
-- -- or with dot-repeat support
-- -- vim.keymap.set('n', '<C-_>', '<CMD>lua require("Comment.api").call("toggle_current_linewise_op")<CR>g@$')
--
-- -- Blockwise toggle current line using C-\
-- vim.keymap.set('n', '<C-\\>', '<CMD>lua require("Comment.api").toggle_current_blockwise()<CR>')
-- -- or with dot-repeat support
-- -- vim.keymap.set('n', '<C-\\>', '<CMD>lua require("Comment.api").call("toggle_current_blockwise_op")<CR>g@$')
--
-- -- Linewise toggle multiple line using <leader>gc with dot-repeat support
-- -- Example: <leader>gc3j will comment 4 lines
-- vim.keymap.set('n', '<leader>gc', '<CMD>lua require("Comment.api").call("toggle_linewise_op")<CR>g@')
--
-- -- Blockwise toggle multiple line using <leader>gc with dot-repeat support
-- -- Example: <leader>gb3j will comment 4 lines
-- vim.keymap.set('n', '<leader>gb', '<CMD>lua require("Comment.api").call("toggle_blockwise_op")<CR>g@')
--
-- -- # VISUAL mode
--
-- -- Linewise toggle using C-/
-- vim.keymap.set('x', '<C-_>', '<ESC><CMD>lua require("Comment.api").toggle_linewise_op(vim.fn.visualmode())<CR>')
--
-- -- Blockwise toggle using <leader>gb
-- vim.keymap.set('x', '<leader>gb', '<ESC><CMD>lua require("Comment.api").toggle_blockwise_op(vim.fn.visualmode())<CR>')
