require 'tools.tool'
local tl = Tool

local M = {}
M.setup = function()

	local unload_plugins = {
		"init.lua", -- we don't need to load init again
		"omnisharp-vim.vim",
	}

	local helper_set = {} -- forget cache list
	for _, v in pairs(unload_plugins) do
		helper_set[v] = true
	end


	local config_dir = vim.fn.stdpath('config') .. '/lua/vim-conf/'
	local files = vim.fn.readdir(config_dir) -- read all files in dir
	for _, fname in pairs(files) do
		if helper_set[fname] == nil then
			local path = config_dir .. fname
			vim.cmd('source ' .. path)
		end
	end
end
M.setup()
