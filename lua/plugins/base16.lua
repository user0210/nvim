-- local M = {
-- 	"RRethy/nvim-base16",
-- }
-- function M.config()

local base16 = require("base16-colorscheme")

base16.with_config ({
	telescope = false,
	indentblankline = true,
	cmp = true,
	illuminate = true,
})

base16.setup({
-- MONDO-BEGIN
	base00 = "#1d1f21",
	base01 = "#282a2e",
	base02 = "#373b41",
	base03 = "#969896",
	base04 = "#b4b7b4",
	base05 = "#c5c8c6",
	base06 = "#e0e0e0",
	base07 = "#ffffff",
	base08 = "#cc6666",
	base09 = "#de935f",
	base0A = "#f0c674",
	base0B = "#b5bd68",
	base0C = "#8abeb7",
	base0D = "#81a2be",
	base0E = "#b294bb",
	base0F = "#a3685a",
	base08a = "#AC4646",
	base09a = "#BE733F",
	base0Aa = "#D0A654",
	base0Ba = "#959D48",
	base0Ca = "#6A9E97",
	base0Da = "#61829E",
	base0Ea = "#92749B",
	base0Fa = "#83483A",
	base00a = "#181A1C",
	base01a = "#222427",
	base02a = "#2F3237",
	base03a = "#66696B",
	base04a = "#A5A7A5",
	base05a = "#BCBFBD",
	base06a = "#D2D4D3",
	base07a = "#EFEFEF",
	base08b = "#643233",
	base09b = "#6D4930",
	base0Ab = "#76623A",
	base0Bb = "#595E34",
	base0Cb = "#435E5C",
	base0Db = "#3F505F",
	base0Eb = "#57495E",
	base0Fb = "#50332D",
-- MONDO-END
})

local colors = require("colorscheme").colors

colors.codeBG=colors.base00
colors.nocdBG=colors.base01
colors.nocdFG=colors.base03a
colors.cursBG=colors.base02
colors.cursFG=colors.base00a
colors.buffBG=colors.base01a
colors.buffFG=colors.base03a

vim.api.nvim_set_hl(0, 'Normal',					{ fg = "NONE",			bg = "NONE" })
vim.api.nvim_set_hl(0, 'Whitespace',				{ fg = colors.base02,	bg = "NONE" })
vim.api.nvim_set_hl(0, 'NonText',					{ fg = colors.base02,	bg = "NONE" })

vim.api.nvim_set_hl(0, 'CursorLine',				{ bg = colors.base00a,	bold = true })
vim.api.nvim_set_hl(0, 'CursorLineNr',				{ bg = colors.cursBG,	fg = colors.cursFG })
vim.api.nvim_set_hl(0, 'CursorLineSign',			{ bg = colors.cursBG,	fg = colors.cursFG })
vim.api.nvim_set_hl(0, 'CursorLineFold',			{ bg = colors.cursBG,	fg = colors.cursFG })

vim.api.nvim_set_hl(0, 'LineNr',					{ bg = colors.nocdBG,	fg = colors.nocdFG })
vim.api.nvim_set_hl(0, 'SignColumn',				{ bg = colors.nocdBG,	fg = colors.nocdFG })
vim.api.nvim_set_hl(0, 'FoldColumn',				{ bg = colors.nocdBG,	fg = colors.nocdFG })

vim.api.nvim_set_hl(0, 'VertSplit',					{ bg = colors.base00,	fg = colors.nocdBG })
vim.api.nvim_set_hl(0, 'EndOfBuffer',				{ bg = colors.nocdBG,	fg = colors.base00a})

-- Text Background
vim.api.nvim_set_hl(0, 'Code',						{ bg = colors.codeBG })
vim.cmd([[set winhighlight=Normal:Code]])

vim.api.nvim_set_hl(0, 'NoCode',					{ bg = colors.nocdBG })
vim.api.nvim_set_hl(0, 'NoCodeSign',				{ bg = colors.nocdBG })
vim.api.nvim_set_hl(0, 'NoCodeCursor',				{ bg = colors.cursBG })

-- popupmenu
vim.api.nvim_set_hl(0, 'Pmenu',						{ bg = colors.base01a,	fg = colors.base03 })
vim.api.nvim_set_hl(0, 'PmenuSel',					{ bg = colors.base03,	fg = colors.base00, blend = 0 })
vim.api.nvim_set_hl(0, 'PmenuSbar',					{ bg = colors.base01a, })
vim.api.nvim_set_hl(0, 'PmenuThumb',				{ bg = colors.base0Db, })

-- colors for hover-window
vim.api.nvim_set_hl(0, "NormalFloat", 				{ bg = colors.base01,	fg = colors.base03 })
vim.api.nvim_set_hl(0, "FloatBorder", 				{ bg = colors.base01 })
vim.api.nvim_set_hl(0, "FloatShadow", 				{ bg = colors.base00a,	blend = 15 })
vim.api.nvim_set_hl(0, "FloatShadowThrough", 		{ bg = colors.base00 })

-- end
-- return M
