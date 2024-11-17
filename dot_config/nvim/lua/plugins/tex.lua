return {
    "lervag/vimtex",
    config = function()
        vim.g.vimtex_view_method = "sioyek"
        vim.g.vimtex_quickfix_mode = 0
        vim.g.vimtex_syntax_conceal_disable = 1
        vim.g.vimtex_quickfix_open_on_warning = 0
        vim.g.vimtex_autopairs = 1
    end,
}
