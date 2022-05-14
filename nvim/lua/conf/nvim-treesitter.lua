require 'nvim-treesitter.configs'.setup {
	-- 支持那些语言可以TSInstallInfo看
	ensure_installed = { "lua", "python", "vim", "c_sharp", "json", "markdown" },
	sync_install = true,
	-- ignore_install = { "javascript" },

	highlight = {
		enable = true,
		additional_vim_regex_highlighting = false,
	},
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		-- colors = {}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},

	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "<CR>",
			node_incremental = "<CR>",
			node_decremental = "<BS>",
			scope_incremental = "gaa",
		}
	},
	indent = {
		enable = true
	},
	-- vim.wo.foldmethod = "expr",
	-- vim.wo.foldexpr = "nvim_treesitter#foldexpr()",
	-- vim.wo.foldlevel = 99,
}
