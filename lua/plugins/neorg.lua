return {
  "nvim-neorg/neorg",
  lazy = false,
  version = "*",
  config = function()
    require("neorg").setup {
      load = {
        ["core.defaults"] = {},
        ["core.concealer"] = {
          config = {
            icon_preset = "varied",
          },
          ["core.keybinds"] = {
            config = {
              default_keybinds = true,
              preset = "neorg"
            },
          }       },
        ["core.dirman"] = {
          config = {
            workspaces = {
              neorg = "~/'Google Drive'/My Drive/neorg",
            },
            default_workspace = "neorg",
          },
        },
      },
    }

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
  end,
}
