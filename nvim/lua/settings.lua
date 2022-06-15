--================================基础配置=============================

-- vim.o.{option}: 全局选项
-- vim.bo.{option}: buffer-local 选项
-- vim.wo.{option}: window-local 选项

vim.bo.autoread = true --文件被外部改动后, 自动加载
vim.bo.autoindent = true
vim.g.completeopt = "menu,menuone,noselect,noinsert" -- 自动补全不自动选中
vim.g.encoding = "UTF-8"
vim.wo.signcolumn = "yes" -- 显示左侧图标指示列

local options = {
	-- guifont = "Menlo:h15", --字体//term下字体跟随term
	pumheight = 10, --弹出菜单更小 补全最多显示10行
	autoread = true, --文件被外部改动后, 自动加载
	number = true,
	relativenumber = true,
	incsearch = true, --开启实时搜索功能
	scrolloff = 4, --永远保持x行
	cursorline = false, --line
	wrap = false, --tab menu设置
	splitbelow = true, --水平分割自动在下
	splitright = true, --左右分割自动在右
	cmdheight = 2,
	wildmenu = true, -- 补全增强
	tabstop = 4,
	softtabstop = 4,
	shiftwidth = 4,
	smarttab = true, --智能知道4或2
	updatetime = 100, --响应更快
	hidden = true, --允许隐藏被修改过的buffer 不保存可以跳转文件，作用就是保存在缓冲区中
	ff = "unix",
	showtabline = 2, --总是显示tab
	mouse = "a",
	showmode = false,
	backup = false, --不生成备份文件
	swapfile = false, --不生成临时文件
	undofile = false, --不生成 undo 文件
	ignorecase = true, --搜索时大小写不敏感
	compatible = false, --关闭兼容模式
	shortmess = "c", --补全的时候少一些东西
	encoding = "utf-8",
	fileencoding = "utf-8",
	fileencodings = "utf-8,utf-16,gbk,gb18030",
	autoindent = true, -- 新行对齐当前行
	smartindent = true,
	termguicolors = true,
	-- whichwrap = 'b,s,<,>,[,],h,l', -- 行结尾可以跳到下一行
	timeoutlen = 500, -- 设置 timeoutlen 为等待键盘快捷键连击时间500毫秒
	completeopt = { "menuone", "noselect" }, -- mostly just for cmp
	-- iskeyword = "-"			--使破折号为文本对象
	-- vim.cmd [[set iskeyword+=-]]
	-- clipboard = "unnamedplus" --copy everthing
}

for _k, _v in pairs(options) do
	vim.opt[_k] = _v;
end

--================================基础配置=============================
