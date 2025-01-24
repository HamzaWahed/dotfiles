if vim.g.vscode then
    require("user.vscode_keymaps")
end

-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")
