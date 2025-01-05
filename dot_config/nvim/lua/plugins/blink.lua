return {
    {
        "saghen/blink.cmp",
        opts = function(_, opts)
            opts.completion.ghost_text.enabled = false
            opts.keymap = {
                preset = "default",
                ["<Tab>"] = { "snippet_forward", "fallback" },
                ["<S-Tab>"] = { "snippet_backward", "fallback" },
            }
        end,
    },
}
