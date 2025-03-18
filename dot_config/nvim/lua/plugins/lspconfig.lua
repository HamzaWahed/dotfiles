return {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
        opts.inlay_hints = {
            enabled = false,
        }

        opts.servers.clangd = {
            filetypes = { "c", "cpp", "objc", "objcpp" },
        }
    end,
}
