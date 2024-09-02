return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = {
      filters = {
        -- dotfiles = true,
      },
   update_cwd = true,
   update_focused_file = {
      enable = true,
      update_cwd = false,
   },
    },
}
