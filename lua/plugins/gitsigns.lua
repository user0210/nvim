-- local M = {
-- 	"lewis6991/gitsigns.nvim",
-- }
-- function M.config()

require("gitsigns").setup({
	signs = {
		add          = { hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
		change       = { hl = 'GitSignsChange', text = '▎', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
		delete       = { hl = 'GitSignsDelete', text = '_', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
		topdelete    = { hl = 'GitSignsDelete', text = '‾', numhl='GitSignsDeleteNr', linehl='GitSignsDeleteLn' },
		changedelete = { hl = 'GitSignsChange', text = '~', numhl='GitSignsChangeNr', linehl='GitSignsChangeLn' },
		untracked    = { hl = 'GitSignsAdd'   , text = '▎', numhl='GitSignsAddNr'   , linehl='GitSignsAddLn'    },
	},
	signcolumn = true,  -- Toggle with `:Gitsigns toggle_signs`
	numhl      = false, -- Toggle with `:Gitsigns toggle_numhl`
	linehl     = false, -- Toggle with `:Gitsigns toggle_linehl`
	word_diff  = false, -- Toggle with `:Gitsigns toggle_word_diff`
	watch_gitdir = {
		interval = 1000,
		follow_files = true,
	},
	attach_to_untracked = true,
	current_line_blame = false, -- Toggle with `:Gitsigns toggle_current_line_blame`
	current_line_blame_opts = {
		virt_text = true,
		virt_text_pos = "eol", -- 'eol' | 'overlay' | 'right_align'
		delay = 1000,
		ignore_whitespace = false,
	},
	current_line_blame_formatter = "<author>, <author_time:%Y-%m-%d> - <summary>",
	sign_priority = 6,
	update_debounce = 100,
	status_formatter = nil, -- Use default
	max_file_length = 40000, -- Disable if file is longer than this (in lines)
	preview_config = {
		-- Options passed to nvim_open_win
		border = "single",
		style = "minimal",
		relative = "cursor",
		row = 0,
		col = 1,
	},
	yadm = {
		enable = false,
	},
})

local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = colors.base0Bb, bg = colors.base01a })
vim.api.nvim_set_hl(0, "GitSignsChange", { fg = colors.base0Db, bg = colors.base01a })
vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = colors.base08b, bg = colors.base01a })

-- end
-- return M
