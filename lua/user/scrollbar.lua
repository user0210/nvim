local status_ok, scrollbar = pcall(require, "scrollbar")
if not status_ok then
	return
end

local colors = require("colorscheme").colors

scrollbar.setup({
	show = true,
	show_in_active_only = false,
	set_highlights = true,
	folds = 1000, -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
	max_lines = false, -- disables if no. of lines in buffer exceeds this
	handle = {
		text = " ",
		color = nil,
		cterm = nil,
		hide_if_all_visible = true, -- Hides handle if all lines are visible
	},
	marks = {
		Cursor = {
			text = "•",
			priority = 0,
			color = colors.base00a,
			cterm = nil,
		},
		Search = {
			text = { "-", "=" },
			priority = 1,
			color = colors.base0Aa,
			cterm = nil,
		},
		Error = {
			text = { "-", "=" },
			priority = 2,
			color = nil,
			cterm = nil,
		},
		Warn = {
			text = { "-", "=" },
			priority = 3,
			color = nil,
			cterm = nil,
		},
		Info = {
			text = { "-", "=" },
			priority = 4,
			color = nil,
			cterm = nil,
		},
		Hint = {
			text = { "-", "=" },
			priority = 5,
			color = nil,
			cterm = nil,
		},
		Misc = {
			text = { "-", "=" },
			priority = 6,
			color = nil,
			cterm = nil,
		},
		GitAdd = {
			text = "┆",
			priority = 7,
			color = nil,
			cterm = nil,
		},
		GitChange = {
			text = "┆",
			priority = 7,
			color = nil,
			cterm = nil,
		},
		GitDelete = {
			text = "▁",
			priority = 7,
			color = nil,
			cterm = nil,
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


local hls_status_ok, hlslens = pcall(require, "hlslens")
if not hls_status_ok then
	return
end

require("scrollbar.handlers.search").setup({
    override_lens = function() end,
})

vim.api.nvim_set_hl(0, 'HlSearchLens',				{ fg = colors.base00a, bg = colors.base01 })
vim.api.nvim_set_hl(0, 'HlSearchLensNear',			{ fg = colors.base00a, bg = colors.base02 })
vim.api.nvim_set_hl(0, 'HlSearchFloat',				{ fg = colors.base00a, bg = colors.base02 })
--vim.api.nvim_set_hl(0, 'HlSearchNear',			{ fg = colors.base00a, bg = colors.base02 })
