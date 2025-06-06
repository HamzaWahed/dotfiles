return {
    "leath-dub/snipe.nvim",
    keys = {
        {
            "gb",
            function()
                require("snipe").open_buffer_menu()
            end,
            desc = "Open Snipe buffer menu",
        },
    },
    opts = {
        hints = {
            dictionary = "asdflewcmpghio",
        },

        sort = "default",
    },
}
