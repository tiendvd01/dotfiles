return {
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-nvim",
    },
  },
  {
    -- Statusline: show full relative path (no "..." truncation) so library
    -- files (site-packages/...) are distinguishable from project files.
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      local c = opts.sections.lualine_c
      -- index 4 = LazyVim pretty_path (the last item is the trouble symbols breadcrumb)
      c[4] = {
        function()
          local p = vim.fn.expand("%:~:.")
          if p == "" then
            return "[No Name]"
          end
          if vim.bo.modified then
            p = p .. " [+]"
          end
          return p
        end,
      }
    end,
  },
}
