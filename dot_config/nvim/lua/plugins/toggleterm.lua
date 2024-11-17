return {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = true,
    keys = {
        {
            "<leader>tf",
            "<cmd>ToggleTerm size=40 direction=float<cr>",
            desc = "Open a float terminal at the project directory",
        },
    },
}
