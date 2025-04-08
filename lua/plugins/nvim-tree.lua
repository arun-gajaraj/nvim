return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = {
      filters = {
			enable = false,
      },
		view ={
			width = 40,
		},
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
    },
}
