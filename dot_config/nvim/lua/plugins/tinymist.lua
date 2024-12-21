return {
    "Myriad-Dreamin/tinymist",
    config = function()
        require("lspconfig").tinymist.setup({
            cmd = { "tinymist" },
            filetypes = { "typst" },
            root_dir = function(fname)
                return vim.fn.getcwd() -- Adjust this if you have a specific root dir
            end,
            settings = {
                formatterMode = "typstyle",
            },
        })
    end,
}
