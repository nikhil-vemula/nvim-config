-- Clear search highlight on <ESC>
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

local wk = require("which-key")
wk.add({
  { "<leader>y", '"+y', desc = "Yank to clipboard", mode = {"n", "v"} },
  { "<leader>p", '"+p', desc = "Paste to clipboard", mode = { "n" } },
  { "<leader>F", 'gg=G', desc = "Format", mode = {"n"} },

  -- { "<leader>w", proxy = "<c-w>", group = "windows" },
  { "<leader>w", group = "windows" },
  { "<leader>ww", "<C-w>w", desc = "Switch windows", mode = {"n"} },
  { "<leader>ws", "<C-w>s", desc = "Split window", mode = {"n"} },
  { "<leader>wv", "<C-w>v", desc = "Split window vertically", mode = {"n"} },
  { "<leader>wq", "<C-w>q", desc = "Quit a window", mode = {"n"} },
  { "<leader>wh", "<C-w>h", desc = "Go to the left window", mode = {"n"} },
  { "<leader>wj", "<C-w>j", desc = "Go to the up window", mode = {"n"} },
  { "<leader>wk", "<C-w>k", desc = "Go to the down window", mode = {"n"} },
  { "<leader>wl", "<C-w>l", desc = "Go to the right window", mode = {"n"} },

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
