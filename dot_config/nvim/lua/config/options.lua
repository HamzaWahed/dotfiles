-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.opt.wrap = true
-- vim.opt.textwidth = 70
vim.o.tabstop = 4
vim.o.expandtab = true
vim.o.softtabstop = 4
vim.o.shiftwidth = 4
vim.o.relativenumber = false
vim.g.mkdp_auto_close = 0
vim.g.mkdp_combine_preview = 1
vim.g.mkdp_combine_preview_auto_refresh = 1
vim.g.mkdp_browser = "Zen Browser"
vim.g.snacks_animate = false
-- vim.g.snacks_indent = false
vim.opt.cmdheight = 0
vim.diagnostic.enable(false)
vim.opt.number = false

-- hides tab indicators
vim.opt.list = false
