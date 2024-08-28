return {
	"mellow-theme/mellow.nvim",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd('colorscheme mellow')
	end
}
