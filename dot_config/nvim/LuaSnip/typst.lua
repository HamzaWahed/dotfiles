local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s({ trig = ";a", snippetType = "autosnippet" }, {
        t("alpha"),
    }),
    s({ trig = ";b", snippetType = "autosnippet" }, {
        t("beta"),
    }),
    s({ trig = ";g", snippetType = "autosnippet" }, {
        t("gamma"),
    }),

    s({ trig = "otimes", snippetType = "autosnippet" }, {
        t("times.circle"),
    }),

    s({ trig = "oplus", snippetType = "autosnippet" }, {
        t("plus.circle"),
    }),

    s(
        { trig = "mk", dscr = "Inline math mode", snippetType = "autosnippet" },
        fmta("$<> $", { i(1) })
    ),

    s(
        { trig = "dm", dscr = "Display math mode", snippetType = "autosnippet" },
        fmta(
            [[
  $
   <>
  $ <>
  ]],
            { i(1), i(0) }
        )
    ),

    s({
        trig = "__",
        dscr = "Subscript math mode",
        wordTrig = false,
        snippetType = "autosnippet",
    }, fmta("_(<>)", { i(1) })),

    s(
        { trig = "frac", dscr = "fractices", snippetType = "autosnippet" },
        fmta("(<>)/(<>)", { i(1), i(2) })
    ),

    s(
        { trig = "itac", dscr = "italic", snippetType = "autosnippet" },
        fmta("_<>_", { i(1) })
    ),

    s(
        { trig = "ket", dscr = "ket vector", snippetType = "autosnippet" },
        fmta("ket(<>)", { i(1) })
    ),

    s(
        { trig = "bra", dscr = "bra vector", snippetType = "autosnippet" },
        fmta("bra(<>)", { i(1) })
    ),

    s(
        { trig = "brk", dscr = "braket", snippetType = "autosnippet" },
        fmta("braket(<>,<>)", { i(1), i(2) })
    ),

    s(
        { trig = "opd", dscr = "outer product", snippetType = "autosnippet" },
        fmta("ketbra(<>,<>)", { i(1), i(2) })
    ),

    s(
        { trig = "exval", dscr = "Expected value", snippetType = "autosnippet" },
        fmta("expval(<>,<>)", { i(1), i(2) })
    ),

    s(
        { trig = "agl", dscr = "angle brackets", snippetType = "autosnippet" },
        fmta("angle.l <> angle.r", { i(1) })
    ),

    s(
        { trig = "norm", dscr = "Norm", snippetType = "autosnippet" },
        fmta("norm(<>)", { i(1) })
    ),

    s(
        { trig = "assn", dscr = "Assignment preamble" },
        fmta(
            [[
#import "@preview/dashy-todo:0.0.1": todo

#let title = [Assignment <>]
#let author = [Hamza Wahed]

#set page(
  paper: "us-letter",
  margin: (x: 8em),
)

#set par(justify: true)

#set text(size: 12pt)

#align(
  center,
  text(24pt)[
    *#title*
  ],
)

#align(
  center,
  text(15pt)[
    #author
  ],
)

<>
  ]],
            { i(1), i(0) }
        )
    ),
}
