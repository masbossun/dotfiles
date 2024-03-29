-- examples for your init.lua

-- disable netrw at the very start of your init.lua (strongly advised)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

require("nvim-tree").setup({
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	open_on_setup_file = false,
	ignore_ft_on_setup = { "alpha" },
	hijack_cursor = true,
	hijack_unnamed_buffer_when_opening = false,
	update_cwd = true,
	view = {
		signcolumn = "no",
		adaptive_size = true,
		side = "left",
		width = 10,
		hide_root_folder = true,
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
	update_focused_file = {
		enable = true,
		update_cwd = false,
	},
})
