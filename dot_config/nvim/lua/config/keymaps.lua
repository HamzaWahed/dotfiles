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

local Terminal = require("toggleterm.terminal").Terminal
local lazygit_instance =
    Terminal:new({ cmd = "lazygit", hidden = true, direction = "float" })

function lazygit()
    lazygit_instance:toggle()
end

local neogit = require("neogit")

vim.keymap.set("n", "<leader>gg", function()
    neogit.open({ kind = "split_below" })
end, { noremap = true, silent = true })

local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set("", "x", function()
    hop.hint_words()
end, { remap = true, silent = true })
