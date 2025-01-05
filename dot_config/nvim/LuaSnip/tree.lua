local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

local in_mathzone = function()
    local line, col = unpack(vim.api.nvim_win_get_cursor(0))
    local current_line = vim.api.nvim_buf_get_lines(0, line - 1, line, false)[1]
    local before_cursor = current_line:sub(1, col)
    local after_cursor = current_line:sub(col + 1)

    return before_cursor:match("#{") and after_cursor:match("}") ~= nil
end

return {
    s(
        { trig = "mk", dscr = "Inline math mode", snippetType = "autosnippet" },
        fmta("#{<> }", { i(1) })
    ),

    s({ trig = "inn", snippetType = "autosnippet" }, {
        t("\\in "),
    }),

    s({ trig = "nin", snippetType = "autosnippet" }, {
        t("\\notin "),
    }),

    s({ trig = "and", snippetType = "autosnippet" }, {
        t("\\cap{} "),
    }, { condition = in_mathzone }),

    s({ trig = ">=", snippetType = "autosnippet" }, {
        t("\\geq"),
    }),

    s(
        { trig = "cal", dscr = "mathcal", snippetType = "autosnippet" },
        fmta("\\mathcal{<>}", { i(1) }),
        { condition = in_mathzone }
    ),

    s(
        { trig = "ff", snippetType = "autosnippet" },
        fmta("\\frac{<>}{<>}", {
            i(1),
            i(2),
        }),
        { condition = in_mathzone }
    ),

    s({
        trig = "__",
        dscr = "Subscript math mode",
        wordTrig = false,
        snippetType = "autosnippet",
    }, fmta("_{ <> }", { i(1) })),

    s({
        trig = "^^",
        dscr = "Superscript math mode",
        wordTrig = false,
        snippetType = "autosnippet",
    }, fmta("^{ <> }", { i(1) })),

    s({ trig = "<=", snippetType = "autosnippet" }, {
        t("\\leq"),
    }),

    s({ trig = ">=", snippetType = "autosnippet" }, {
        t("\\geq"),
    }),

    s(
        { trig = "\\{", dscr = "set", snippetType = "autosnippet" },
        fmta("\\{ <> \\}", { i(1) })
    ),

    s(
        { trig = "@l", dscr = "link", snippetType = "autosnippet" },
        fmta("[<>](<>)", { i(1), i(2) })
    ),

    s(
        { trig = "@t", dscr = "transclude", snippetType = "autosnippet" },
        fmta("\\transclude{<>}", { i(1) })
    ),

    s({ trig = "...", snippetType = "autosnippet" }, {
        t("\\ldots"),
    }),

    s(
        { trig = "align", dscr = "Align* mode", snippetType = "autosnippet" },
        fmta(
            [[
  \begin{align*}
    <>
  \end{align*}
  ]],
            { i(1) }
        ),
        { condition = in_mathzone }
    ),

    s(
        { trig = "p", priority = 1000, dscr = "Paragraph block" },
        fmta(
            [[
            \p{
              <>
            } <>
            ]],
            { i(1), i(0) }
        )
    ),

    s(
        { trig = "ul", dscr = "unordered list" },
        fmta(
            [[
            \ul{
              <>
            }
            ]],
            { i(1) }
        )
    ),

    s(
        { trig = "li", dscr = "list item" },
        fmta(
            [[
            \li{
              <>
            }
            ]],
            { i(1) }
        )
    ),

    s(
        { trig = "dm", dscr = "Display math mode", snippetType = "autosnippet" },
        fmta(
            [[
            ##{
              <>
            } <>
            ]],
            { i(1), i(0) }
        )
    ),

    s(
        { trig = ";c", dscr = "Code", snippetType = "autosnippet" },
        fmta(
            [[
            \code{<>}
            ]],
            { i(1) }
        )
    ),

    s(
        { trig = "meta", dscr = "Metadata" },
        fmta(
            [[
          \title{<>}
          \taxon{<>}
          \author{hamzawahed}

        ]],
            { i(1), i(2) }
        )
    ),
}
