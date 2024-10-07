
-- local sorters = require('telescope.sorters')
--
-- -- Custom sorter function
-- local function custom_sorter()
--   return sorters.Sorter:new{
--     scoring_function = function(_, prompt, line)
--       if line:match("_mock") or line:match("_test") then
--         return 1000000 -- Assign a high score to push these files to the end
--       end
--       -- Default sorter logic
--       return sorters.get_fzy_sorter().scoring_function(_, prompt, line)
--     end,
--   }
-- end

return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        {
            "nvim-telescope/telescope-fzf-native.nvim",
            build = "make",
            enabled = true
        }, 
        {"nvim-telescope/telescope-file-browser.nvim", enabled = true},
	     {'nvim-telescope/telescope-symbols.nvim'}, 
			{"blacktrub/telescope-godoc.nvim"},
			{"benfowler/telescope-luasnip.nvim"},
    },
    branch = "0.1.x",
    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")

        telescope.setup({
            defaults = {
						file_ignore_patterns = {"vendor/"},
                sorting_strategy = "ascending",
					-- sorter = custom_sorter(),
                layout_strategy = "horizontal",
                layout_config = {prompt_position = "top"},
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous, -- move to prev result
                        ["<C-j>"] = actions.move_selection_next, -- move to next result
                        ["<C-q>"] = actions.send_selected_to_qflist +
                            actions.open_qflist, -- send selected to quickfixlist
								['<C-d>'] = require('telescope.actions').delete_buffer
                    },
							n = {
    	  						['<C-d>'] = require('telescope.actions').delete_buffer
      					}, -- n
                }
            },
            extensions = {
                file_browser = {
                    path = "%:p:h", -- open from within the folder of your current buffer
                    display_stat = false, -- don't show file stat
                    grouped = true, -- group initial sorting by directories and then files
                    hidden = true, -- show hidden files
                    hide_parent_dir = true, -- hide `../` in the file browser
                    hijack_netrw = true, -- use telescope file browser when opening directory paths
                    prompt_path = true, -- show the current relative path from cwd as the prompt prefix
                    use_fd = true -- use `fd` instead of plenary, make sure to install `fd`
                }
            }
        })

        -- telescope.load_extension("fzf")
        -- telescope.load_extension("file_browser")
			require("telescope").load_extension("godoc")
			require('telescope').load_extension('luasnip')

        local builtin = require("telescope.builtin")

        -- key maps

        local keymap = vim.keymap
        local opts = {noremap = true, silent = true}

		keymap.set("n", "<leader>fk", ":Telescope keymaps<CR>", opts)
		keymap.set("n", "<leader>fh", ":Telescope help_tags<CR>", opts)
		keymap.set("n", "<leader> ", ":Telescope find_files<CR>", opts)
		keymap.set("n", "<leader>fg", ":Telescope live_grep<CR>", opts)
		keymap.set("n", "<leader>fw", ":Telescope grep_string<CR>", opts)
		keymap.set("n", "<leader>fb", ":Telescope buffers<CR>", opts)
		-- keymap.set("n", "<leader>so", ":Telescope lsp_document_symbols<CR>", opts)
    end
}
