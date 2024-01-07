return
{
  "nvim-tree/nvim-tree.lua" ,
  lazy = false,
  dependencies = 
  {
    "nvim-tree/nvim-web-devicons" , 
  },
  config = 
  {
    renderer = {
      indent_markers = {
        enable = true,
      }
    },
    filters = {
      dotfiles ,
    }
  }, 
}
