local config = function() 
  require("bufferline").setup{
    options = {
      hover = {
        enabled = true,
        delay = 200,
        reveal = {'close'}
      },
      offsets = {
        {
          filetype = "NvimTree",
          text = "File Explorer",
          highlight = "Directory",
          separator = true -- use a "true" to enable the default, or set your own character
        }
      } ,
      separator_style = "slant",
      diagnostics = "nvim_lsp" ,
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and "" or ""
        return icon .. count
      end,
    },
  }

end

return {
  'akinsho/bufferline.nvim' ,
  dependencies = 'nvim-tree/nvim-web-devicons' ,
  config = config , 
}
