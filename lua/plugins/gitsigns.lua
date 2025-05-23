return {
    "lewis6991/gitsigns.nvim",
    config = function() 
		require("gitsigns").setup({
		 current_line_blame = true, 
			-- Toggle with `:Gitsigns toggle_current_line_blame`
		  current_line_blame_opts = {
   		virt_text = true,
    		virt_text_pos = 'right_align', -- 'eol' | 'overlay' | 'right_align'
    		delay = 1000,
    		ignore_whitespace = true,
    		virt_text_priority = 100,
		}}) 
	end,
}
