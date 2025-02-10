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

-- vscode keymaps
keymap(
    { "n", "v" },
    "<leader>pa",
    "<cmd>lua require('vscode').action('projectManager.saveProject')<CR>"
)

keymap(
    { "n", "v" },
    "<leader>po",
    "<cmd>lua require('vscode').action('projectManager.listProjects')<CR>"
)

keymap(
    { "n", "v" },
    "<leader>pe",
    "<cmd>lua require('vscode').action('projectManager.editProjects')<CR>"
)

keymap(
    { "n", "v" },
    "<leader>e",
    "<cmd>lua require('vscode').action('workbench.view.explorer')<CR>"
)

-- harpoon keymaps
keymap(
    { "n", "v" },
    "<leader>ha",
    "<cmd>lua require('vscode').action('vscode-harpoon.addEditor')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>ho",
    "<cmd>lua require('vscode').action('vscode-harpoon.editorQuickPick')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>he",
    "<cmd>lua require('vscode').action('vscode-harpoon.editEditors')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>1",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor1')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>2",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor2')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>3",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor3')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>4",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor4')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>5",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor5')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>6",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor6')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>7",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor7')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>8",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor8')<CR>"
)
keymap(
    { "n", "v" },
    "<leader>9",
    "<cmd>lua require('vscode').action('vscode-harpoon.gotoEditor9')<CR>"
)
