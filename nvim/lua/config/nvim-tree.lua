require("nvim-tree").setup({
  open_on_setup = true,
  open_on_setup_file = true,
  view = {
    signcolumn = "no",
    mappings = {
      list = {
        { key = "t", action = "vsplit" },
      },
    },
  },
  renderer = {
    icons = {
      show = {
        file = false,
      },
    },
  },
})
