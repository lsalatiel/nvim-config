return {
    "ThePrimeagen/harpoon",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },

    config = function()
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")
        local keymap = vim.keymap

        keymap.set("n", "<C-m>", mark.add_file)
        keymap.set("n", "<C-e>", ui.toggle_quick_menu)

        keymap.set("n", "<C-w>", function() ui.nav_file(1) end)
        keymap.set("n", "<C-n>", function() ui.nav_file(2) end)
        keymap.set("n", "<C-i>", function() ui.nav_file(3) end)
        keymap.set("n", "<C-o>", function() ui.nav_file(4) end)
    end,
}
