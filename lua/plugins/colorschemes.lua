return {
  -- https://github.com/catppuccin/nvim
  {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        background = { 
          light = "latte", 
          dark = "mocha" 
        },
      })
      vim.cmd("colorscheme catppuccin")
    end,
    priority = 1000 
  },
}
