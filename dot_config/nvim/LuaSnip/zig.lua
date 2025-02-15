local ls = require("luasnip")
local s = ls.snippet
local t = ls.text_node
local i = ls.insert_node
local fmta = require("luasnip.extras.fmt").fmta
local rep = require("luasnip.extras").rep

return {
    s({ trig = "gpa", dscr = "default general purpose allocator" }, {
        t("var gpa = std.heap.GeneralPurposeAllocator(.{}).init;"),
    }),

    s(
        { trig = "wp", dscr = "print method for a writer object" },
        fmta('writer.print("<>", .{<>});', {
            i(1),
            i(2),
        })
    ),

    s(
        { trig = "p", dscr = "print method for a writer object" },
        fmta('std.debug.print("<>", .{<>});', {
            i(1),
            i(2),
        })
    ),
}
