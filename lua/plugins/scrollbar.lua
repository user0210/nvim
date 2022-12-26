-- local M = {
-- 	"petertriho/nvim-scrollbar",
-- 	dependencies = {
-- 		"kevinhwang91/nvim-hlslens",
-- 	},
-- }
-- function M.config()

require("scrollbar.handlers.search").setup({
	override_lens = function() end,
})

require("scrollbar").setup({
	show = true,
	show_in_active_only = false,
	set_highlights = false,
	folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
	max_lines = false, -- disables if no. of lines in buffer exceeds this
	handle = {
		text = " ",
		hide_if_all_visible = true, -- Hides handle if all lines are visible
	},
	marks = {
		Cursor = {
			text = "•",
			priority = 0,
		},
		Search = {
			text = { "-", "=" },
			priority = 1,
		},
		Error = {
			text = { "-", "=" },
			priority = 2,
		},
		Warn = {
			text = { "-", "=" },
			priority = 3,
		},
		Info = {
			text = { "-", "=" },
			priority = 4,
		},
		Hint = {
			text = { "-", "=" },
			priority = 5,
		},
		Misc = {
			text = { "-", "=" },
			priority = 6,
		},
		GitAdd = {
			text = "┆",
			priority = 7,
		},
		GitChange = {
			text = "┆",
			priority = 7,
		},
		GitDelete = {
			text = "▁",
			priority = 7,
		},
	},
	excluded_buftypes = {
		"terminal",
	},
	excluded_filetypes = {
		"NvimTree",
		"prompt",
		"TelescopePrompt",
		"noice",
		"minimap",
		"undotree",
		"diff",
	},
	autocmd = {
		render = {
			"BufWinEnter",
			"TabEnter",
			"TermEnter",
			"WinEnter",
			"CmdwinLeave",
			"TextChanged",
			"VimResized",
			"WinScrolled",
		},
		clear = {
			"BufWinLeave",
			"TabLeave",
			"TermLeave",
			"WinLeave",
		},
	},
	handlers = {
		cursor = true,
		diagnostic = true,
		gitsigns = true, -- Requires gitsigns
		handle = true,
		search = true, -- Requires hlslens
	},
})

local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, "ScrollbarCursor", 			{ bg = colors.base01a,	fg = colors.base00a })
vim.api.nvim_set_hl(0, "ScrollbarHandle", 			{ bg = colors.base01,	fg = colors.base00a })
vim.api.nvim_set_hl(0, "ScrollbarCursorHandle", 	{ bg = colors.base01,	fg = colors.base00a })
vim.api.nvim_set_hl(0, "ScrollbarError", 			{ bg = colors.base00,	fg = colors.base08a })
vim.api.nvim_set_hl(0, "ScrollbarErrorHandle", 		{ bg = colors.base01,	fg = colors.base08 })
vim.api.nvim_set_hl(0, "ScrollbarWarn", 			{ bg = colors.base00,	fg = colors.base09a })
vim.api.nvim_set_hl(0, "ScrollbarWarnHandle", 		{ bg = colors.base01,	fg = colors.base09 })
vim.api.nvim_set_hl(0, "ScrollbarSearch", 			{ bg = colors.base00,	fg = colors.base0Aa })
vim.api.nvim_set_hl(0, "ScrollbarSearchHandle", 	{ bg = colors.base01,	fg = colors.base0A })
vim.api.nvim_set_hl(0, "ScrollbarInfo", 			{ bg = colors.base00,	fg = colors.base0Ca })
vim.api.nvim_set_hl(0, "ScrollbarInfoHandle", 		{ bg = colors.base01,	fg = colors.base0C })
vim.api.nvim_set_hl(0, "ScrollbarHint", 			{ bg = colors.base00,	fg = colors.base0Fa })
vim.api.nvim_set_hl(0, "ScrollbarHintHandle", 		{ bg = colors.base01,	fg = colors.base0F })
vim.api.nvim_set_hl(0, "ScrollbarMisc", 			{ bg = colors.base00,	fg = colors.base03a })
vim.api.nvim_set_hl(0, "ScrollbarMiscHandle", 		{ bg = colors.base01,	fg = colors.base03 })
vim.api.nvim_set_hl(0, "ScrollbarGitAdd", 			{ bg = colors.base00,	fg = colors.base0Ba })
vim.api.nvim_set_hl(0, "ScrollbarGitAddHandle", 	{ bg = colors.base01,	fg = colors.base0B })
vim.api.nvim_set_hl(0, "ScrollbarGitChange", 		{ bg = colors.base00,	fg = colors.base0Da })
vim.api.nvim_set_hl(0, "ScrollbarGitChangeHandle", 	{ bg = colors.base01,	fg = colors.base0D })
vim.api.nvim_set_hl(0, "ScrollbarGitDelete", 		{ bg = colors.base00,	fg = colors.base0Fa })
vim.api.nvim_set_hl(0, "ScrollbarGitDeleteHandle", 	{ bg = colors.base01,	fg = colors.base0F })

-- end
-- return M
