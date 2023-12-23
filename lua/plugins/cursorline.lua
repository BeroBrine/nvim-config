return {
  "yamatsum/nvim-cursorline" ,
  config = {
    cursorline = {
      enable = true,
      timeout = 500,
    },
    cursorword = {
      enable = true,
      min_length = 3,
      hl = { underline = true },
    }
  } 

}
