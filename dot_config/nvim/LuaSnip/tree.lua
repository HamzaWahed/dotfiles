local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s(
        { trig = "mk", dscr = "Inline math mode", snippetType = "autosnippet" },
        fmta("#{<> }", { i(1) })
    ),

    s(
        { trig = "par", dscr = "Paragraph block" },
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
        { trig = "dm", dscr = "Display math mode", snippetType = "autosnippet" },
        fmta(
            [[
            #{
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

          \import{base-macros}


        ]],
            { i(1), i(2) }
        )
    ),
}
