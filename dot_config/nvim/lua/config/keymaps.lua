-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--

-- keymaps for luasnips
local ls = require("luasnip")
vim.keymap.set({ "i" }, "<C-l>", function()
    ls.expand()
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<Tab>", function()
    ls.jump(1)
end, { silent = true })
vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
    ls.jump(-1)
end, { silent = true })

vim.keymap.set({ "i", "s" }, "<C-E>", function()
    if ls.choice_active() then
        ls.change_choice(1)
    end
end, { silent = true })

vim.keymap.set("n", "<leader>fz", "<cmd>Telescope zoxide<cr>")
