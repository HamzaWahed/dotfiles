return {
    {
        "hrsh7th/nvim-cmp",
        ---@param opts cmp.ConfigSchema
        opts = function(_, opts)
            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api
                            .nvim_buf_get_lines(0, line - 1, line, true)[1]
                            :sub(col, col)
                            :match("%s")
                        == nil
            end

            local cmp = require("cmp")
            local lspkind = require("lspkind")

            opts.experimental = {
                ghost_text = false,
            }

            opts.snippet = {
                expand = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            }
            table.insert(opts.sources, { name = "luasnip" })

            opts.formatting = {
                format = function(_, vim_item)
                    vim_item.kind = lspkind.presets.default[vim_item.kind]
                        .. " "
                        .. vim_item.kind
                    return vim_item
                end,
                expandable_indicator = false,
            }

            opts.mapping = vim.tbl_extend("force", opts.mapping, {
                ["<Tab>"] = function(fallback)
                    return LazyVim.cmp.map(
                        { "snippet_forward", "ai_accept" },
                        fallback
                    )()
                end,

                ["<S-Tab>"] = function(fallback)
                    return LazyVim.cmp.map(
                        { "snippet_backward", "ai_accept" },
                        fallback
                    )()
                end,

                ["<CR>"] = cmp.config.disable,
            })
        end,
    },

    {
        "onsails/lspkind.nvim",
    },
}
