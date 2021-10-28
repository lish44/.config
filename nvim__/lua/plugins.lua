local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
	 --fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})	--默认地址
	fn.system({'git', 'clone', '--depth', '1', 'https://codechina.csdn.net/mirrors/wbthomason/packer.nvim.git', install_path})	--csdn加速镜像
	vim.cmd 'packadd packer.nvim'
end



--vim.cmd [[packadd packer.nvim]]
return require('packer').startup({ function()
	use 'wbthomason/packer.nvim'-- Packer can manage itself
	use {
		"vim-airline/vim-airline",
		requires = {
			"vim-airline/vim-airline-themes",
			--综合图标支持such vim-airline lightline, vim-startify
			"ryanoasis/vim-devicons"
		}
	}

	use 'neovim/nvim-lspconfig'
	use 'hrsh7th/nvim-compe'
	use 'hrsh7th/vim-vsnip'
	use 'arcticicestudio/nord-vim'
	use 'kdheepak/lazygit.nvim'
	  
end,
	config = {
		max_jobs = 16,
		git = {
			-- 更换节点访问
			default_url_format = 'https://hub.fastgit.org/%s'
		},
		display = {
			open_fn = function()
				return require('packer.util').float({ border = 'single' })
			end
		}
	}

})
