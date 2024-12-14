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

vim.api.nvim_set_keymap(
    "n",
    "<leader>gg",
    "<cmd>lua lazygit()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_hl(0, "LeapBackdrop", { fg = "None" })

vim.api.nvim_set_hl(0, "LeapMatch", {
    fg = "white",
    bg = "red",
    bold = true,
    nocombine = true,
})

vim.api.nvim_set_hl(0, "LeapLabel", {
    fg = "yellow",
    bg = "None",
    bold = true,
    nocombine = true,
})

local hop = require("hop")
local directions = require("hop.hint").HintDirection

vim.keymap.set("", "x", function()
    hop.hint_words()
end, { remap = true, silent = true })

-- vim.keymap.set("", "f", function()
--     hop.hint_char1({
--         direction = directions.AFTER_CURSOR,
--         current_line_only = false,
--     })
-- end, { remap = true, silent = true })
-- vim.keymap.set("", "F", function()
--     hop.hint_char1({
--         direction = directions.BEFORE_CURSOR,
--         current_line_only = false,
--     })
-- end, { remap = true, silent = true })
-- vim.keymap.set("", "t", function()
--     hop.hint_char1({
--         direction = directions.AFTER_CURSOR,
--         current_line_only = false,
--         hint_offset = -1,
--     })
-- end, { remap = true, silent = true })
-- vim.keymap.set("", "T", function()
--     hop.hint_char1({
--         direction = directions.BEFORE_CURSOR,
--         current_line_only = false,
--         hint_offset = 1,
--     })
-- end, { remap = true, silent = true })

function CreateNote()
    local counter_file = vim.fn.expand("~/forest/counter.txt")
    local counter = 0

    local f = io.open(counter_file, "r")
    if f then
        counter = tonumber(f:read("*all")) or 0
        f:close()
    end

    counter = counter + 1
    local loc_counter = counter
    local base36_counter = ""

    while loc_counter > 0 do
        local remainder = loc_counter % 36
        base36_counter = string.char(
            (remainder < 10 and 48 + remainder) or (87 + remainder)
        ) .. base36_counter
        loc_counter = math.floor(counter / 36)
    end

    while #base36_counter < 4 do
        base36_counter = "0" .. base36_counter
    end

    local filename = "hzw-" .. base36_counter .. ".md"

    print(counter)
    f = io.open(counter_file, "w")
    f:write(counter)
    f:close()

    vim.cmd("edit " .. filename)
end

function CreateJournalNote()
    local counter_file = vim.fn.expand("~/notes/counter.txt")
    local counter = 0

    local f = io.open(counter_file, "r")
    if f then
        counter = tonumber(f:read("*all")) or 0
        f:close()
    end

    counter = counter + 1
    local loc_counter = counter
    local base36_counter = ""

    while loc_counter > 0 do
        local remainder = loc_counter % 36
        base36_counter = string.char(
            (remainder < 10 and 48 + remainder) or (87 + remainder)
        ) .. base36_counter
        loc_counter = math.floor(counter / 36)
    end

    while #base36_counter < 4 do
        base36_counter = "0" .. base36_counter
    end

    local filename = "jnr-" .. base36_counter .. ".md"

    print(counter)
    f = io.open(counter_file, "w")
    f:write(counter)
    f:close()

    vim.cmd("edit " .. filename)
end

vim.api.nvim_set_keymap(
    "n",
    "<leader>fZ",
    ":lua CreateNote()<CR>",
    { noremap = true, silent = true }
)

vim.api.nvim_set_keymap(
    "n",
    "<leader>fz",
    ":lua CreateJournalNote()<CR>",
    { noremap = true, silent = true }
)
