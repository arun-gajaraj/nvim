local keymap = vim.keymap

local opts = { noremap = true, silent = true }

-- Directory Navigation
keymap.set("n","<leader>m",":NvimTreeFocus<CR>", opts)
keymap.set("n","<leader>f",":NvimTreeToggle<CR>", opts)

-- Pane Navigation
keymap.set("n","<C-h>","<C-w>h", opts) -- Navigate Left
keymap.set("n","<C-j>","<C-w>j", opts) -- Navigate Down
keymap.set("n","<C-k>","<C-w>k", opts) -- Navigate Up
keymap.set("n","<C-l>","<C-w>l", opts) -- Navigate right

-- Window Management
keymap.set("n","<leader>sv",":vsplit<CR>", opts) -- split vertically
keymap.set("n","<leader>sh",":split<CR>", opts) -- split horizontally
keymap.set("n","<leader>sm",":MaximizerToggle<CR>", opts) -- Toggle Minimize

-- Indentation
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

-- Comments
vim.api.nvim_set_keymap("n", "<C-_>", "gtc", { noremap = false, desc = "Comment Line" })
vim.api.nvim_set_keymap("v", "<C-_>", "goc", { noremap = false, desc = "Comment Line" })
