return {
    "MeanderingProgrammer/render-markdown.nvim",
    opts = function(_, opts)
        opts.heading = {
            icons = { "󰲡 ", "󰲣 ", "󰲥 ", "󰲧 ", "󰲩 ", "󰲫 " },
            signs = { "󰫎 " },
            above = "▄",
            below = "▀",
        }
    end,
}
