return {
	"mellow-theme/mellow.nvim",
	lazy = false,
	priority = 999,
	config = function()
		vim.cmd("colorscheme mellow")
	end,
}

-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	lazy = false,
-- 	priority = 999,
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine-moon")
-- 	end,
-- 	opts = {
-- 		variant = "dawn",
-- 	},
-- }

-- return {
-- 	"vague2k/vague.nvim",
-- 	config = function()
-- 		require("vague").setup({})
-- 	end,
-- }
