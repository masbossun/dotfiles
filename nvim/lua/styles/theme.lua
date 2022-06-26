require("styles.utils")
local colors = require "styles.colors"

local cmd = vim.cmd

local hi = {
    CreateHi({
        group = "Normal",
        ctermbg = 7,
        ctermfg = 0,
        guibg = "NONE",
        guifg = colors.Foreground
    }),
    CreateHi({
        group = "LineNr",
        ctermbg = "NONE",
        ctermfg = 8,
        guibg = "NONE",
        guifg = colors.BrightBlack
    }),
    CreateHi({
        group = "CursorLineNr",
        ctermbg = "NONE",
        ctermfg = 8,
        guibg = "NONE",
        guifg = colors.Foreground
    }),
    CreateHi({
        group = "SignColumn",
        ctermbg = "NONE",
        ctermfg = 8,
        guibg = "NONE",
        guifg = colors.BrightBlack
    }),
    CreateHi({
        group = "PrimaryBlock",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightRed,
        guifg = colors.Black
    }),
    CreateHi({
        group = "SecondaryBlock",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightBlack,
        guifg = colors.BrightRed
    }),
    CreateHi({
        group = "GitBlock",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightBlack,
        guifg = colors.BrightYellow
    }),
    CreateHi({
        group = "Blanks",
        ctermbg = 8,
        ctermfg = 0,
        guibg = colors.BrightBlack,
        guifg = colors.Foreground
    }),
    CreateHi({
        group = "VertSplit",
        ctermbg = 8,
        ctermfg = 8,
        guibg = colors.BrightBlack,
        guifg = colors.Black
    }),
    CreateHi({
        group = "StatusLine",
        ctermbg = 8,
        ctermfg = 8,
        guibg = "NONE",
        guifg = colors.BrightBlack
    }),
    CreateHi({
        group = "StatusLineNc",
        ctermbg = 8,
        ctermfg = 8,
        guibg = "NONE",
        guifg = colors.BrightBlack
    }), 
    CreateHi({
        group = "StatusLine",
        ctermbg = 8,
        ctermfg = 1,
        guibg = "NONE",
        guifg = colors.BrightRed
    }),
    CreateHi({
        group = "StatusLineNC",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightBlack,
        guifg = colors.Black
    }),
    CreateHi({
        group = "Mode",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightRed,
        guifg = colors.Black
    }),
    CreateHi({
        group = "Mode",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.BrightRed,
        guifg = colors.Black
    }),
    CreateHi({
        group = "Git",
        ctermbg = 8,
        ctermfg = 1,
        guibg = colors.Yellow,
        guifg = colors.Black
    }),
    CreateHi({
        group = "Filename",
        ctermbg = 8,
        ctermfg = 1,
        guibg = "NONNE",
        guifg = colors.BrightBlack
    }),
}

local his = table.concat(hi, " | ")

cmd([[
  augroup bossunclr
    autocmd!
    autocmd ColorScheme * ]] .. his .. [[ 
  augroup END

  colorscheme base16-tomorrow-night
]])
