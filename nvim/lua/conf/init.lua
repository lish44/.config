local ends_with = function(str, ending)
	return ending == "" or str:sub(- #ending) == ending
end

local M = {}
M.setup = function()

	local unload_plugins = {
		"init", -- we don't need to load init again
		'autosave',
		'lspconfig',
		'cmp',
		'telescope',
	}

	local helper_set = {} -- forget cache list
	for _, v in pairs(unload_plugins) do
		helper_set[v] = true
	end


	local config_dir = vim.fn.stdpath('config') .. '/lua/conf/'
	local files = vim.fn.readdir(config_dir) -- read all files in dir
	for _, fname in pairs(files) do
		if ends_with(fname, ".lua") then
			local cut_suffix_fname = fname:sub(1, #fname - #'.lua')
			if helper_set[cut_suffix_fname] == nil then
				local file = 'conf/' .. cut_suffix_fname
				local status_ok, _ = pcall(require, file)
				if not status_ok then
					vim.notify('【Failed loading】-> ' .. fname, vim.log.levels.ERROR)
				end
			end
		end
	end
end
M.setup()
