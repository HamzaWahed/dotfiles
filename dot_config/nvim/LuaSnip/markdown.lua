local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s({ trig = ";a", snippetType = "autosnippet" }, {
        t("\\alpha"),
    }),
    s({ trig = ";b", snippetType = "autosnippet" }, {
        t("\\beta"),
    }),
    s({ trig = ";g", snippetType = "autosnippet" }, {
        t("\\gamma"),
    }),

    s({ trig = "tt", snippetType = "autosnippet" }, {
        t("\\texttt{"),
        i(1),
        t("}"),
    }),

    s(
        {
            trig = "ff",
            dscr = "Expands 'ff' into '\frac{}{}'",
            snippetType = "autosnippet",
        },
        fmta("\\frac{<>}{<>}", {
            i(1),
            i(2),
        })
    ),

    s(
        { trig = "eq", priority = 1000, dscr = "A LaTeX equation environment" },
        fmta(
            [[
      \begin{equation}
        <>
      \end{equation}
    ]],
            { i(1) }
        )
    ),

    s(
        { trig = "env", priority = 1000, snippetType = "autosnippet" },
        fmta(
            [[
      \begin{<>}
        <>
      \end{<>}
    ]],
            {
                i(1),
                i(2),
                rep(1), -- this node repeats insert node i(1)
            }
        )
    ),

    s(
        {
            trig = "hr",
            dscr = "The hyperref package's href{}{} command (for url links)",
        },
        fmta([[\href{<>}{<>}]], {
            i(1, "url"),
            i(2, "display name"),
        })
    ),

    s({
        trig = "__",
        dscr = "Subscript math mode",
        wordTrig = false,
        snippetType = "autosnippet",
    }, fmta("_{<>}", { i(1) })),

    s(
        { trig = "mk", dscr = "Inline math mode", snippetType = "autosnippet" },
        fmta("$<>$", { i(1) })
    ),
    s(
        { trig = "dm", dscr = "Display math mode", snippetType = "autosnippet" },
        fmta(
            [[
  $$
    <>
  $$
  ]],
            { i(1) }
        )
    ),

    s(
        { trig = "align", dscr = "Align* mode", snippetType = "autosnippet" },
        fmta(
            [[
  \begin{align*}
    <>
  \end{align*}
  ]],
            { i(1) }
        )
    ),

    s(
        { trig = "ket", dscr = "ket vector", snippetType = "autosnippet" },
        fmta("\\ket{<>}", { i(1) })
    ),

    s(
        { trig = "bra", dscr = "bra vector", snippetType = "autosnippet" },
        fmta("\\bra{<>}", { i(1) })
    ),
}
