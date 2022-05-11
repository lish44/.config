local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath "data" .. "/site/pack/packer/start/packer.nvim" -- 安装位置
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system {
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	}
	print "Installing packer close and reopen Neovim..."
	vim.cmd [[packadd packer.nvim]]
end

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]]

local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end


-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

return require('packer').startup(function()

	use 'wbthomason/packer.nvim'
	use 'nvim-lua/plenary.nvim'
	use 'nvim-lua/popup.nvim'

	use { 'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview' } -- 进入到这个插件的git目录下的app文件夹 并且执行 yarn安装命令 
	use { 'neoclide/coc.nvim', branch = 'release' }
	use 'nvim-treesitter/nvim-treesitter'
	use 'p00f/nvim-ts-rainbow'
	use 'OmniSharp/omnisharp-vim'

	-- 补全
	-- use 'hrsh7th/nvim-cmp' -- Autocompletion plugin 自动补全
	-- use 'hrsh7th/cmp-buffer'
	-- use 'hrsh7th/cmp-path'
	-- use 'hrsh7th/cmp-cmdline'
	-- use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
	-- use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp 自动补全数据源
	-- use "hrsh7th/cmp-nvim-lua"

	-- snipps

	-- use 'rafamadriz/friendly-snippets'

	-- lsp
	-- use 'neovim/nvim-lspconfig'
	-- use 'williamboman/nvim-lsp-installer'

	-- theme
	use 'EdenEast/nightfox.nvim'
	use 'glepnir/spaceline.vim'
	use 'kyazdani42/nvim-web-devicons'

	-- term
	use { "akinsho/toggleterm.nvim" }

	--注释
	use 'numToStr/Comment.nvim'

	use {
		'akinsho/bufferline.nvim',
		tag = "*",
		config = function() require("bufferline").setup {} end
	}

	use "folke/which-key.nvim"

	-- 名字替换
	-- use 'glepnir/lspsaga.nvim'
	use 'kdheepak/lazygit.nvim'
	use 'junegunn/fzf.vim'

	-- 括号配对
	-- use {
	-- 	"windwp/nvim-autopairs",
	-- 	config = function()
	-- 		require('nvim-autopairs').setup()
	-- 	end
	-- }

	-- git
	use {
		'lewis6991/gitsigns.nvim',
		config = function()
			require('gitsigns').setup()
		end
	}

	--telescope
	use {
		'nvim-telescope/telescope.nvim',
		requires = {
			{ "nvim-telescope/telescope-live-grep-raw.nvim" },
			{ "nvim-telescope/telescope-ui-select.nvim" },
			{ "nvim-telescope/telescope-dap.nvim" },
			{ "nvim-telescope/telescope-fzf-native.nvim", run = "make" }
		},
	}

	-- use "MattesGroeger/vim-bookmarks"
	-- use "tom-anders/telescope-vim-bookmarks.nvim"
	-- auto save
	-- use "Pocco81/AutoSave.nvim"

	-- use 'mhartington/formatter.nvim'
end)

-- {
--     ignore = function()
--         -- Only ignore empty lines for lua files
--         if vim.bo.filetype == 'lua' then
--             return '^$'
--         end
--     end,
-- }
