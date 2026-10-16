-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
--
vim.o.spell = false

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.mouse = "a"

vim.o.wrap = true

-- 1. Tắt tự động format trên toàn hệ thống mặc định
vim.g.autoformat = false

-- 2. Chỉ kích hoạt lại autoformat riêng cho các file Lua
vim.api.nvim_create_autocmd("FileType", {
  pattern = "lua",
  callback = function()
    vim.b.autoformat = true
  end,
})

vim.lsp.enable("nginx_language_server")
