local M = {
  "lexay/telescope-zoxide.nvim",
}

M.config = function()
  require("telescope").load_extension("zoxide")
end

return M
