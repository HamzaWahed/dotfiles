return {
  {
    "L3MON4D3/LuaSnip",
    config = function()
      -- Load snippets from specified path
      require("luasnip.loaders.from_lua").lazy_load({ paths = { "~/.config/nvim/LuaSnip/" } })

      require("luasnip").config.set_config({
        enable_autosnippets = true,
        update_events = "TextChanged,TextChangedI",

        -- Use Tab to trigger visual selection
        store_selection_keys = "<Tab>",
      })
    end,
  },
}
