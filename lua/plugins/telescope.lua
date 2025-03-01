return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = { 'nvim-lua/plenary.nvim' },
  config = function()
    local builtin = require('telescope.builtin')
    local wk = require("which-key")
    wk.add({
      { "<leader>f", group = "file" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", mode = "n" },
      { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find live grep", mode = "n" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help tags", mode = "n" },
    })
  end
}
