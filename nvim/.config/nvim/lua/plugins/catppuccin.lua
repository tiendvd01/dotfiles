return {
  "catppuccin/nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "auto",
      background = { light = "latte", dark = "frappe" },
    })
  end,
}
