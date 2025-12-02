return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {
		background_colour = "#000000",
		cmdline = {
			enabled = true, -- 启用 Noice cmdline UI
			view = "cmdline_popup", -- 使用 popup 显示命令行，而不是经典的底部命令行
			opts = {}, -- cmdline UI 的全局选项
			format = {
				cmdline = { pattern = "^:", icon = "", lang = "vim" }, -- 用于普通命令行模式的格式
				search_down = { kind = "search", pattern = "^/", icon = " ", lang = "regex" }, -- 向下搜索
				search_up = { kind = "search", pattern = "^%?", icon = " ", lang = "regex" }, -- 向上搜索
				filter = { pattern = "^:%s*!", icon = "$", lang = "bash" }, -- 过滤器命令
				lua = { pattern = { "^:%s*lua%s+", "^:%s*lua%s*=%s*", "^:%s*=%s*" }, icon = "", lang = "lua" }, -- Lua 输入
				help = { pattern = "^:%s*he?l?p?%s+", icon = "" }, -- help 输入
				input = { view = "cmdline_input", icon = "󰥻 " }, -- 用于输入函数的格式
			},
		},

		-- 将 `views` 配置添加到 opts 中
		views = {
			cmdline_popup = {
				position = { row = 1, col = math.floor(vim.fn.winwidth(0) / 2) - 40 }, -- 设置弹出窗口的位置为顶部居中
				size = { width = 80, height = "auto" }, -- 可以设置弹出窗口的大小，根据需要调整
			},
		},
	},

	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
}
