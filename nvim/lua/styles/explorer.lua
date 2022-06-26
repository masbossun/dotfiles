require("styles.utils")
local colors = require("styles.colors")
local cmd = vim.cmd

cmd(CreateHi({ group = "NvimTreeFolderIcon", guifg = colors.BrightRed }))
