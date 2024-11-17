return {}
-- return {
--     {
--         "saghen/blink.cmp",
--         version = not vim.g.lazyvim_blink_main and "*",
--         build = vim.g.lazyvim_blink_main and "cargo build --release",
--         opts_extend = {
--             "sources.completion.enabled_providers",
--             "sources.compat",
--         },
--         event = "InsertEnter",
--
--         ---@module 'blink.cmp'
--         ---@type blink.cmp.Config
--         ---
--         opts = {
--             keymap = "enter",
--
--             highlight = {
--                 use_nvim_cmp_as_default = false,
--             },
--
--             nerd_font_variant = "mono",
--
--             windows = {
--                 autocomplete = {
--                     -- draw = "reversed",
--                     winblend = vim.o.pumblend,
--                 },
--                 documentation = {
--                     auto_show = true,
--                 },
--                 ghost_text = {
--                     enabled = false,
--                 },
--             },
--
--             -- experimental auto-brackets support
--             accept = {
--                 require("luasnip").lsp_expand,
--                 auto_brackets = { enabled = true },
--             },
--
--             sources = {
--                 compat = {},
--                 completion = {
--                     enabled_providers = {
--                         "lazydev",
--                         "lsp",
--                         "path",
--                         "snippets",
--                         "buffer",
--                     },
--                 },
--
--                 providers = {
--                     lsp = {
--                         -- dont show LuaLS require statements when lazydev has items
--                         fallback_for = { "lazydev" },
--                     },
--                     lazydev = {
--                         name = "LazyDev",
--                         module = "lazydev.integrations.blink",
--                     },
--                 },
--             },
--
--             blocked_filetypes = {},
--
--             kind_icons = {
--                 Text = "󰉿",
--                 Method = "󰊕",
--                 Function = "󰊕",
--                 Constructor = "󰒓",
--
--                 Field = "󰜢",
--                 Variable = "󰆦",
--                 Property = "󰖷",
--
--                 Class = "󱡠",
--                 Interface = "󱡠",
--                 Struct = "󱡠",
--                 Module = "󰅩",
--
--                 Unit = "󰪚",
--                 Value = "󰦨",
--                 Enum = "󰦨",
--                 EnumMember = "󰦨",
--
--                 Keyword = "󰻾",
--                 Constant = "󰏿",
--
--                 Snippet = "󱄽",
--                 Color = "󰏘",
--                 File = "󰈔",
--                 Reference = "󰬲",
--                 Folder = "󰉋",
--                 Event = "󱐋",
--                 Operator = "󰪚",
--                 TypeParameter = "󰬛",
--             },
--         },
--
--         ---@param opts blink.cmp.Config | { sources: { compat: string[] } }
--         config = function(_, opts)
--             -- setup compat sources
--             local enabled = opts.sources.completion.enabled_providers
--             for _, source in ipairs(opts.sources.compat or {}) do
--                 opts.sources.providers[source] = vim.tbl_deep_extend(
--                     "force",
--                     { name = source, module = "blink.compat.source" },
--                     opts.sources.providers[source] or {}
--                 )
--                 if
--                     type(enabled) == "table"
--                     and not vim.tbl_contains(enabled, source)
--                 then
--                     table.insert(enabled, source)
--                 end
--             end
--             require("blink.cmp").setup(opts)
--         end,
--     },
-- }
