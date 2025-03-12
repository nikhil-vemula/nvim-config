return {
  { 
    'echasnovski/mini.surround', 
    version = '*',
    config = function()
      require('mini.surround').setup()
    end
  },
  { 
    'echasnovski/mini.operators', 
    version = '*' ,
    config = function()
      require('mini.operators').setup()
    end
  },
}
