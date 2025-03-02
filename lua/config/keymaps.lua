-- Clear search highlight on <ESC>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

local wk = require("which-key")
wk.add({
  { "<leader>y", '"+y', desc = "Yank to clipboard", mode = {"n", "v"} },
  { "<leader>p", '"+p', desc = "Paste to clipboard", mode = { "n" } },
  { "<leader>F", 'gg=G', desc = "Format", mode = {"n"} },

  { "<leader>w", proxy = "<c-w>", group = "windows" },

  -- Increment/Decrement numbers
  { "<leader>+", "<C-a>", desc = "Increment number", mode = {"n"} },
  { "<leader>-", "<C-x>", desc = "Decrement number", mode = {"n"} },

  -- Tab management
  { "<leader>to", "<cmd>tabnew<CR>", desc = "Open new tab", mode = {"n"} },
  { "<leader>tx", "<cmd>tabclose<CR>", desc = "Close current tab", mode = {"n"} },
  { "<leader>tn", "<cmd>tabn<CR>", desc = "Go to next tab", mode = {"n"} },
  { "<leader>tp", "<cmd>tabp<CR>", desc = "Go to previous tab", mode = {"n"} },
  { "<leader>tf", "<cmd>tabnew %<CR>", desc = "Open current buffer in new tab", mode = {"n"} },

})
