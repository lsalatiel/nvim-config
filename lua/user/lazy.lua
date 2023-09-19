local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end

vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {
        priority = 1000,
        "rebelot/kanagawa.nvim",
        config = function()
            vim.cmd("colorscheme kanagawa")
            require("user.plugins.colorscheme")
        end,
    },
})
