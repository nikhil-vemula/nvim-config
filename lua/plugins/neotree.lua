return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons",
      "MunifTanjim/nui.nvim",
    },
    config = function()
      require("neo-tree").setup({
        event_handlers = {
          {
            event = "file_open_requested",
            handler = function()
              require("neo-tree.command").execute({ action = "close" })
            end
          },
        },
      })
      local wk = require("which-key")
      wk.add({
        { "<leader>e", group = "explorer" },
        { "<leader>ee", "<cmd>Neotree toggle<CR>", desc = "Toggle NeoTree", mode = {"n"} },
        { "<leader>ef", "<cmd>Neotree focus<CR>", desc = "Focus NeoTree", mode = {"n"} },
        { "<leader>en", "<cmd>Neotree reveal<CR>", desc = "Reveal in NeoTree", mode = {"n"} },
        { "<leader>ec", "<cmd>Neotree create<CR>", desc = "Create file/directory", mode = {"n"} },
        { "<leader>ed", "<cmd>Neotree delete<CR>", desc = "Delete file/directory", mode = {"n"} },
        { "<leader>em", "<cmd>Neotree move<CR>", desc = "Move file/directory", mode = {"n"} },
        { "<leader>ep", "<cmd>Neotree paste<CR>", desc = "Paste file/directory", mode = {"n"} },
      })
    end
  }
}
