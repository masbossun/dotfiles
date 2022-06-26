local colors              = require("styles.colors")
local present, treesitter = pcall(require, "nvim-treesitter.configs")
if not present then
  return
end


treesitter.setup({
  ensure_installed = "all",
  sync_install = false,
  ignore_install = {""},
  highlight = {
    enable = true,
    disable = {""},
    additional_vim_regex_highlighting = true,
  },
  indent = {
    enable = true,
    disable = {"yaml"},
  },
  rainbow = {
    enable = true,
    -- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
    extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
    max_file_lines = nil, -- Do not enable for files with more than n lines, int
    colors = { -- table of hex strings
      colors.Red,
      colors.Green,
      colors.Yellow,
      colors.Blue,
      colors.Purple,
      colors.Cyan
    },
    -- termcolors = {} -- table of colour name strings
  }
})
