return {
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        enabled = true,
        preset = {
          header = [[
  ██╗    ██╗██╗  
 ██╔╝   ██╔╝╚██╗ 
██╔╝   ██╔╝  ╚██╗
╚██╗  ██╔╝   ██╔╝
 ╚██╗██╔╝   ██╔╝ 
  ╚═╝╚═╝    ╚═╝  
        ]],
        },
      },
      explorer = {
        enabled = true,
      },
      picker = {
        sources = {
          explorer = {
            exclude = { ".git", ".DS_Store" },
            layout = {
              layout = {
                position = "left",
              },
            },
          },
          files = {
            exclude = { "node_modules", "dist", ".git", ".DS_Store" },
          },
          grep = {
            exclude = { "node_modules", "dist", ".git", ".DS_Store" },
          },
        },
        win = {
          input = {
            keys = {
              ["<C-h>"] = { "toggle_hidden", mode = { "i", "n" } },
            },
          },
          list = {
            keys = {
              ["<C-h>"] = "toggle_hidden",
            },
          },
        },
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = function(_, opts)
      local ok, devicons = pcall(require, "nvim-web-devicons")
      local diff_icon = (ok and devicons.get_icon_by_filetype("diff", { default = true })) or ""

      table.insert(opts.dashboard.preset.keys, 5, {
        icon = diff_icon .. " ",
        key = "d",
        desc = "Git changes",
        action = ":CodeDiff",
      })
      return opts
    end,
  },
}
