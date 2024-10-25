return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "xml", "astro" },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}
