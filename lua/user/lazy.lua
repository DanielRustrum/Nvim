local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"plenary",
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
	},
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
	},
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
	},
	{
		"nvimtools/none-ls.nvim",
	},
	{
		"hrsh7th/nvim-cmp",
	},
	{
		"L3MON4D3/LuaSnip",
	},
	{
		"hrsh7th/cmp-nvim-lsp",
	},
	{
		"m4xshen/smartcolumn.nvim",
		opts = {},
	},
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {},
		dependencies = {
			"MunifTanjim/nui.nvim",
			"rcarriga/nvim-notify",
		},
	},
	{
		"folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
		opts = {
			keywords = {
				FIX = {
					color = "error",
					icon = " ",
					alt = { "FIXME", "BUG", "FIXIT", "FIX" },
				},
				TODO = { icon = " ", color = "info" },
				HACK = { icon = " ", color = "warning" },
				WARN = {
					icon = " ",
					color = "warning",
					alt = { "WARNING", "XXX", "ISSUE" },
				},
				PERF = {
					icon = " ",
					alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
				},
				NOTE = { icon = " ", color = "hint", alt = { "INFO" } },
				TEST = {
					icon = "⏲ ",
					color = "test",
					alt = { "TESTING", "PASSED", "FAILED" },
				},
			},
		},
	},
	{
		"numToStr/Comment.nvim",
		opts = {},
	},
    { 'prichrd/netrw.nvim', opts = {} }
}
local opts = {}

require("lazy").setup(plugins, opts)
