-- local M = {
-- 	"RRethy/nvim-base16",
-- }
-- function M.config()

local base16 = require("base16-colorscheme")

base16.with_config ({
    telescope = false,
    indentblankline = true,
    cmp = false,
    illuminate = true,
})

-- MONDO-BEGIN
base16.setup({
	base00 = "#1d2021",
	base01 = "#3c3836",
	base02 = "#504945",
	base03 = "#665c54",
	base04 = "#bdae93",
	base05 = "#d5c4a1",
	base06 = "#ebdbb2",
	base07 = "#fbf1c7",
	base08 = "#fb4934",
	base09 = "#fe8019",
	base0A = "#fabd2f",
	base0B = "#b8bb26",
	base0C = "#8ec07c",
	base0D = "#83a598",
	base0E = "#d3869b",
	base0F = "#d65d0e",
	base08a = "#DB2914",
	base09a = "#DE6000",
	base0Aa = "#DA9D0F",
	base0Ba = "#989B06",
	base0Ca = "#6EA05C",
	base0Da = "#638578",
	base0Ea = "#B3667B",
	base0Fa = "#B63D00",
	base00a = "#181B1C",
	base01a = "#2C2C2B",
})
-- MONDO-END


local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'Normal',					{ fg = "NONE", bg = "NONE" })

vim.api.nvim_set_hl(0, 'CursorLine',				{ bg = colors.base01a, bold = true })
vim.api.nvim_set_hl(0, 'CursorLineNr',				{ bg = colors.base01a, fg = colors.base02, bold = true })

vim.api.nvim_set_hl(0, 'LineNr',					{ fg = colors.base02, bg = colors.base01a })
vim.api.nvim_set_hl(0, 'SignColumn',				{ fg = colors.base02, bg = colors.base01a })

vim.api.nvim_set_hl(0, 'VertSplit',					{ bg = colors.base00, fg = colors.base01a })
vim.api.nvim_set_hl(0, 'StatusLineNC',				{ bg = colors.base01a, fg = colors.base02})
vim.api.nvim_set_hl(0, 'StatusLine',				{ bg = colors.base02, fg = colors.base00})

-- Text Background
vim.cmd([[augroup CodeGroup]])
vim.api.nvim_set_hl(0, 'CodeGroup',					{ bg = colors.base00 })
vim.cmd([[set winhighlight=Normal:CodeGroup]])

-- end
-- return M
