return {
    {
        "L3MON4D3/LuaSnip",
        lazy = true,
        dependencies = {
            {
                "rafamadriz/friendly-snippets",
                config = function()
                    require("luasnip.loaders.from_vscode").lazy_load()
                end,
            },
        },

        config = function()
            -- Load snippets from specified path
            require("luasnip.loaders.from_lua").lazy_load({
                paths = { "~/.config/nvim/LuaSnip/" },
            })

            require("luasnip").config.set_config({
                enable_autosnippets = true,
                update_events = "TextChanged,TextChangedI",
            })
        end,
    },
}
