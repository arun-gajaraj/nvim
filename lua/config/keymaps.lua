-- local keymap = vim.keymap
--
local opts = { noremap = true, silent = true }
--
-- -- Directory Navigation
-- keymap.set("n","<leader>m",":NvimTreeFocus<CR>", opts)
-- keymap.set("n","<leader>f",":NvimTreeToggle<CR>", opts)
--
-- -- Pane Navigation
-- keymap.set("n","<C-h>","<C-w>h", opts) -- Navigate Left
-- keymap.set("n","<C-j>","<C-w>j", opts) -- Navigate Down
-- keymap.set("n","<C-k>","<C-w>k", opts) -- Navigate Up
-- keymap.set("n","<C-l>","<C-w>l", opts) -- Navigate right
--
-- -- Window Management
-- keymap.set("n","<leader>sv",":vsplit<CR>", opts) -- split vertically
-- keymap.set("n","<leader>sh",":split<CR>", opts) -- split horizontally
-- keymap.set("n","<leader>sm",":MaximizerToggle<CR>", opts) -- Toggle Minimize
--
-- -- Indentation
-- keymap.set("v", "<", "<gv")
-- keymap.set("v", ">", ">gv")
--
-- -- Comments
-- vim.api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false, desc = "Comment Line" })
-- vim.api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false, desc = "Comment Line" })
--
-- -- ToggleTerm
-- -- keymap.set("n", "<C-\\")

local mapkey = require("util.keymapper").mapkey

-- Buffer Navigation
mapkey("<leader>bn", "bnext", "n", { desc = "Next buffer" })
mapkey("<leader>bp", "bprevious", "n", { desc = "Prev buffer" })
mapkey("<leader>bb", "e #", "n", { desc = "Switch to Other Buffer" })
mapkey("<leader>`", "e #", "n", { desc = "Switch to Other Buffer" })

-- Directory Navigatio}n
mapkey("<leader>m", "NvimTreeFocus", "n")
mapkey("<leader>e", "NvimTreeToggle", "n")

-- Pane and Window Navigation
mapkey("<C-h>", "<C-w>h", "n", { desc = "Navigate Left" })
mapkey("<C-j>", "<C-w>j", "n", { desc = "Navigate Down" })
mapkey("<C-k>", "<C-w>k", "n", { desc = "Navigate Up" })
mapkey("<C-l>", "<C-w>l", "n", { desc = "Navigate Right" })
mapkey("<C-h>", "wincmd h", "t", { desc = "Navigate Left" })
mapkey("<C-j>", "wincmd j", "t", { desc = "Navigate Down" })
mapkey("<C-k>", "wincmd k", "t", { desc = "Navigate Up" })
mapkey("<C-l>", "wincmd l", "t", { desc = "Navigate Right" })
mapkey("<C-h>", "TmuxNavigateLeft", "n", { desc = "Navigate Left" })
mapkey("<C-j>", "TmuxNavigateDown", "n", { desc = "Navigate Down" })
mapkey("<C-k>", "TmuxNavigateUp", "n", { desc = "Navigate Up" })
mapkey("<C-l>", "TmuxNavigateRight", "n", { desc = "Navigate Right" })

-- Window Management
mapkey("<leader>sv", "vsplit", "n", { desc = "Split Vertically" })
mapkey("<leader>sh", "split", "n", { desc = "Split Horizontally" })
mapkey("<leader>sm", "MaximizerToggle", "n", { desc = "Toggle Minimise" })

-- Indenting
mapkey("<", "v", "<gv", { desc = "Shift Indentation to Left" })
mapkey(">", "v", ">gv", { desc = "Shift Indentation to Right" })

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n", { desc = "Show Full File Path" })

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false, desc = "Comment Line" })
vim.api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false, desc = "Comment Line" })

-- vim.api.nvim_buf_del_keymap(0, 'n', 'gLeftMouse')
-- vim.api.nvim_buf_set_keymap(0, 'n', '<leader>gI', '<Cmd>lua vim.lsp.buf.implementation()<CR>', opts)
mapkey("<leader>gI", "lua vim.lsp.buf.implementation()", "n", { desc = "Go to implementation" })
