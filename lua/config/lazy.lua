local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- ===========================
-- Lazy.nvim Setup 配置
-- ===========================
require("lazy").setup({
	spec = {
		{ import = "plugins" },
	},
	change_detection = {
		enabled = true,
		notify = false, -- 🚫 禁掉 “Config Change Detected”
	},
})
