return {
	"mason-org/mason-lspconfig.nvim",
	opts = { 
		ensure_installed = { "basedpyright", "stylua", "black", "isort" },
	},
	dependencies = {
		{ "mason-org/mason.nvim", opts = {} },
		"neovim/nvim-lspconfig",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
}
