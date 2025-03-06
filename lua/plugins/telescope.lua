return {
  'nvim-telescope/telescope.nvim', tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 
      "nvim-telescope/telescope-live-grep-args.nvim" ,
      -- This will not install any breaking changes.
      -- For major updates, this must be adjusted manually.
      version = "^1.0.0",
    },
  },
  config = function()
    local telescope = require("telescope")
    local lga_actions = require("telescope-live-grep-args.actions")
    telescope.setup({
      extensions = {
        live_grep_args = {
          auto_quoting = true,
          mappings = {
            i = {
              ["<C-k>"] = lga_actions.quote_prompt(),
              ["<C-i>"] = lga_actions.quote_prompt({ postfix = " --iglob " }),
              ["<C-space>"] = lga_actions.to_fuzzy_refine,
            },
          },
        }
      }
    })
    telescope.load_extension("live_grep_args")
    local builtin = require('telescope.builtin')
    local wk = require("which-key")
    wk.add({
      { "<leader>f", group = "file" },
      { "<leader>ff", "<cmd>Telescope find_files<cr>", desc = "Find files", mode = "n" },
      -- { "<leader>fg", "<cmd>Telescope live_grep<cr>", desc = "Find live grep", mode = "n" },
      { "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>", desc = "Find live grep", mode = "n" },
      { "<leader>fh", "<cmd>Telescope help_tags<cr>", desc = "Find help tags", mode = "n" },
    })
  end
}
