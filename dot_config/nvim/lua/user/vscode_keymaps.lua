local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank to system clipboard
keymap({ "n", "v" }, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({ "n", "v" }, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- hop.nvim
keymap("n", "x", function()
    require("hop").hint_words()
end, opts)

-- project manager keymaps
keymap(
    { "n", "v" },
    "<leader>pa",
    "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>po",
    "<cmd>lua require('vscode').action('projectManager.listProjectsNewWindow')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>pe",
    "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>"
)
