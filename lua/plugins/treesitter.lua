local config = function()
  require('nvim-treesitter.parsers').get_parser_configs().asm = 
  {
    install_info = {
      url = 'https://github.com/rush-rs/tree-sitter-asm.git',
      files = {'src/parser.c'} , 
      branch = 'main' ,
    },
    filetype = "asm" ,
  }

  require("nvim-treesitter.configs").setup(
  {
    indent = 
    {
      enable = false,
    },
    autotag = 
    {
      enable = true,
    },
    ensure_installed = 
    {
      "cpp",
      "bash",
      "lua",
      "gitignore",
      "c",
      "asm",
    },
    auto_install = true,
    highlight = 
    {
      enable = true,
      additional_vim_regex_highlighting = true,
    },
  })
end


return 
{
  "nvim-treesitter/nvim-treesitter" , 
  lazy = false ,
  config = config
}
