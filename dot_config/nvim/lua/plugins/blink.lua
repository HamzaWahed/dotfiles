return {
    "saghen/blink.cmp",
    dependencies = { "L3MON4D3/LuaSnip", version = "v2.3" },
    opts = function(_, opts)
        opts.completion.ghost_text.enabled = false
        opts.completion.accept.auto_brackets.enabled = false
        -- opts.completion.menu.auto_show = false
        opts.snippets = { preset = "luasnip" }
        opts.keymap = {
            preset = "default",
            ["<Tab>"] = { "snippet_forward", "fallback" },
            ["<S-Tab>"] = { "snippet_backward", "fallback" },
            ["<C-b>"] = { "show" },
        }
    end,
}
