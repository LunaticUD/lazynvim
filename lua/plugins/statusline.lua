return {
	{
		"OXY2DEV/bars.nvim",
		config = function()
			require("bars").setup({ statuscolumn = false })
			require("bars").setup({ tabline = false })
		end,
	},
	{
		"folke/snacks.nvim",
		priority = 1000,
		lazy = false,
		---@type snacks.Config
		opts = {

			notifier = {
				enabled = true,
				style = "notification",
			},
			scope = {
				enabled = true,
				cursor = false,
				underline = true,
			},
		},
	},
	{
		-- TODO:
		"folke/todo-comments.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"folke/snacks.nvim",
		},
		event = "VeryLazy",
		config = true,
	},
}
