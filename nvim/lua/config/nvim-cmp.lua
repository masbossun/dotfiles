local lspkind = require("lspkind")
local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
	return
end

local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
	return
end

require("luasnip/loaders/from_vscode").lazy_load()

local check_backspace = function()
	local col = vim.fn.col(".") - 1
	return col == 0 or vim.fn.getline("."):sub(col, col):match("%s")
end

--   פּ ﯟ   some other good icons
local kind_icons = {
	Text = "",
	Method = "m",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}
-- find more here: https://www.nerdfonts.com/cheat-sheet

cmp.setup({
	snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},
	mapping = {
		["<C-k>"] = cmp.mapping.select_prev_item(),
		["<C-j>"] = cmp.mapping.select_next_item(),
		["<C-b>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
		["<C-f>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
		["<C-Space>"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
		["<C-y>"] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
		["<C-e>"] = cmp.mapping({
			i = cmp.mapping.abort(),
			c = cmp.mapping.close(),
		}),
		-- Accept currently selected item. If none selected, `select` first item.
		-- Set `select` to `false` to only confirm explicitly selected items.
		["<CR>"] = cmp.mapping.confirm({ select = true }),
		["<Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_next_item()
			elseif luasnip.expandable() then
				luasnip.expand()
			elseif luasnip.expand_or_jumpable() then
				luasnip.expand_or_jump()
			elseif check_backspace() then
				fallback()
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
		["<S-Tab>"] = cmp.mapping(function(fallback)
			if cmp.visible() then
				cmp.select_prev_item()
			elseif luasnip.jumpable(-1) then
				luasnip.jump(-1)
			else
				fallback()
			end
		end, {
			"i",
			"s",
		}),
	},

	formatting = {
		format = lspkind.cmp_format({

			mode = "symbol_text",
			menu = {
				nvim_lsp = "[LSP]",
				ultisnips = "[US]",
				nvim_lua = "[Lua]",
				path = "[Path]",
				buffer = "[Buffer]",
				emoji = "[Emoji]",
				omni = "[Omni]",
			},
		}),
	},
	sources = {
		{ name = "nvim_lsp" },
		{ name = "luasnip" },
		{ name = "buffer", keyword_length = 4 }, -- for buffer word completion
		{ name = "path" },
	},
	confirm_opts = {
		behavior = cmp.ConfirmBehavior.Replace,
		select = false,
	},
	window = {
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	},
	experimental = {
		ghost_text = false,
		native_menu = false,
	},
})

-- -- Setup nvim-cmp.
-- local cmp = require'cmp'
--
-- cmp.setup({
--
--   snippet = {
--     expand = function(args)
--       vim.fn["UltiSnips#Anon"](args.body)
--     end,
--   },
--   mapping = cmp.mapping.preset.insert({
--           ['<Tab>'] = function(fallback)
--             if cmp.visible() then
--               cmp.select_next_item()
--             else
--               fallback()
--             end
--           end,
--           ['<S-Tab>'] = function(fallback)
--             if cmp.visible() then
--               cmp.select_prev_item()
--             else
--               fallback()
--             end
--
--           end,
--           ['<CR>'] = cmp.mapping.confirm({ select = true }),
--           ['<C-e>'] = cmp.mapping.abort(),
--           ['<Esc>'] = cmp.mapping.close(),
--           ['<C-d>'] = cmp.mapping.scroll_docs(-4),
--           ['<C-f>'] = cmp.mapping.scroll_docs(4),
--         }),
--   sources = {
--     { name = 'nvim_lsp' }, -- For nvim-lsp
--     { name = 'ultisnips' }, -- For ultisnips user.
--     { name = 'nvim_lua' }, -- for nvim lua function
--     { name = 'path' }, -- for path completion
--     { name = 'buffer', keyword_length = 4 }, -- for buffer word completion
--     { name = 'omni' },
--     { name = 'emoji', insert = true, } -- emoji completion
--   },
--
--   completion = {
--     keyword_length = 1,
--     completeopt = "menu,noselect"
--   },
--   view = {
--     entries = 'custom',
--   },
--   formatting = {
--     format = lspkind.cmp_format({
--
--       mode = "symbol_text",
--       menu = ({
--         nvim_lsp = "[LSP]",
--         ultisnips = "[US]",
--         nvim_lua = "[Lua]",
--         path = "[Path]",
--         buffer = "[Buffer]",
--         emoji = "[Emoji]",
-- 	      omni = "[Omni]",
--       }),
--
--     }),
--   },
-- })
--
-- --  see https://github.com/hrsh7th/nvim-cmp/wiki/Menu-Appearance#how-to-add-visual-studio-code-dark-theme-colors-to-the-menu
-- vim.cmd[[
--   highlight! link CmpItemMenu Comment
--   " gray
--   highlight! CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#808080
--   " blue
--   highlight! CmpItemAbbrMatch guibg=NONE guifg=#569CD6
--   highlight! CmpItemAbbrMatchFuzzy guibg=NONE guifg=#569CD6
--   " light blue
--   highlight! CmpItemKindVariable guibg=NONE guifg=#9CDCFE
--   highlight! CmpItemKindInterface guibg=NONE guifg=#9CDCFE
--   highlight! CmpItemKindText guibg=NONE guifg=#9CDCFE
--   " pink
--   highlight! CmpItemKindFunction guibg=NONE guifg=#C586C0
--   highlight! CmpItemKindMethod guibg=NONE guifg=#C586C0
--   " front
--   highlight! CmpItemKindKeyword guibg=NONE guifg=#D4D4D4
--   highlight! CmpItemKindProperty guibg=NONE guifg=#D4D4D4
--   highlight! CmpItemKindUnit guibg=NONE guifg=#D4D4D4
-- ]]
--
--
