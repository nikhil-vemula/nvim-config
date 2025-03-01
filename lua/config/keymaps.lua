local wk = require("which-key")
wk.add({
  { "<leader>y", '"+y', desc = "Yank to clipboard", mode = {"n", "v"} },
  { "<leader>F", 'gg=G', desc = "Format", mode = {"n"} },
})
