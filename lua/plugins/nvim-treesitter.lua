local config = function()
	require("nvim-treesitter.configs").setup({
		indent = {
			enable = true,
		},
		autotag = {
			enable = true,
		},
		ensure_installed = {
			"markdown",
			"json",
			"javascript",
			"typescript",
			"yaml",
			"html",
			"css",
			"markdown",
			"go",
			"bash",
			"lua",
			"dockerfile",
			"solidity",
			"gitignore",
			"python",
			"vue",
			"xml",
			"sql",
		},
		auto_install = true,
		sync_install = false,
		highlight = {
			enable = true,
			additional_vim_regex_highlighting = true,
		},
		textobjects = { select = { enable = true, lookahead = true } },
	})
end

return {
	"nvim-treesitter/nvim-treesitter",
	lazy = false,
	config = config,
	dependencies = {
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		opts = { enable = true, mode = "topline", line_numbers = true },
		lazy = false,
	},
}
