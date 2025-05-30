require("config.globals")
require("config.keymaps")
require("config.options")

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({{import = "plugins"}}, {
    checker = {
        enabled = false -- disable check for plugin updates
    },
    change_detection = {
        enabled = false -- disable check for config file changes
    }
})

-- vim.cmd.colorscheme('kanagawa-dragon')
-- vim.opt.background="light"
vim.cmd.colorscheme('nordic')
-- vim.api.nvim_set_hl(0,"Normal", {bg = "#181825"})
vim.opt.spell=false
vim.o.guicursor="n-v-c-sm:block-blinkwait700-blinkoff400-blinkon250,i-ci:ver25-blinkwait700-blinkoff400-blinkon250,r-cr-o:hor20"
