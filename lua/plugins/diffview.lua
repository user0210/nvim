-- local M = {
-- 	"sindrets/diffview.nvim",
-- }
-- function M.config()

local colors = require("colorscheme").colors

require("diffview").setup({
	diff_binaries = false, -- Show diffs for binaries
	enhanced_diff_hl = true, -- See ':h diffview-config-enhanced_diff_hl'
	git_cmd = { "git" }, -- The git executable followed by default args.
	use_icons = true, -- Requires nvim-web-devicons
	show_help_hints = true, -- Show hints for how to open the help panel
	watch_index = true, -- Update views and index buffers when the git index changes.
	icons = { -- Only applies when use_icons is true.
		folder_closed = "",
		folder_open = "",
	},
	signs = {
		fold_closed = "",
		fold_open = "",
		done = "✓",
	},
	view = {
		-- Configure the layout and behavior of different types of views.
		-- Available layouts:
		--  'diff1_plain'
		--    |'diff2_horizontal'
		--    |'diff2_vertical'
		--    |'diff3_horizontal'
		--    |'diff3_vertical'
		--    |'diff3_mixed'
		--    |'diff4_mixed'
		-- For more info, see ':h diffview-config-view.x.layout'.
		default = {
			-- Config for changed files, and staged files in diff views.
			layout = "diff2_horizontal",
		},
		merge_tool = {
			-- Config for conflicted files in diff views during a merge or rebase.
			layout = "diff3_horizontal",
			disable_diagnostics = true, -- Temporarily disable diagnostics for conflict buffers while in the view.
		},
		file_history = {
			-- Config for changed files in file history views.
			layout = "diff2_horizontal",
		},
	},
	file_panel = {
		listing_style = "tree", -- One of 'list' or 'tree'
		tree_options = { -- Only applies when listing_style is 'tree'
			flatten_dirs = true, -- Flatten dirs that only contain one single dir
			folder_statuses = "only_folded", -- One of 'never', 'only_folded' or 'always'.
		},
		win_config = { -- See ':h diffview-config-win_config'
			position = "left",
			width = 35,
			win_opts = {},
		},
	},
	file_history_panel = {
		log_options = { -- See ':h diffview-config-log_options'
			git = {
				single_file = {
					diff_merges = "combined",
				},
				multi_file = {
					diff_merges = "first-parent",
				},
			},
			hg = {
				single_file = {},
				multi_file = {},
			},
		},
		win_config = { -- See ':h diffview-config-win_config'
			position = "bottom",
			height = 16,
			win_opts = {},
		},
	},
	commit_log_panel = {
		win_config = { -- See ':h diffview-config-win_config'
			win_opts = {},
		},
	},
	default_args = { -- Default args prepended to the arg-list for the listed commands
		DiffviewOpen = {},
		DiffviewFileHistory = {},
	},
	hooks = {
		diff_buf_win_enter = function()
			vim.opt_local.signcolumn = "no"
		end,
		view_enter = function(view)
			vim.api.nvim_set_hl(0, 'Normal', { fg = "NONE", bg = colors.base00 })
			require('lualine').hide({ place = { "tabline" }, unhide = true, })
			vim.opt.laststatus = 3
			vim.cmd("ScrollbarHide")
		end,
		view_leave = function()
			vim.api.nvim_set_hl(0, 'Normal', { fg = "NONE", bg = "NONE" })
			require('lualine').hide({ place = { "tabline" }, unhide = false, })
			vim.opt.laststatus = 2
			vim.cmd("ScrollbarShow")
		end,
	}
})

-- colors

vim.api.nvim_set_hl(0, 'DiffAdd',						{ bg = colors.base0Bb, })
vim.api.nvim_set_hl(0, 'DiffChange',					{ bg = colors.base0Db, })
vim.api.nvim_set_hl(0, 'DiffText',						{ bg = colors.base0Cb, })
vim.api.nvim_set_hl(0, 'DiffDelete',					{ bg = colors.base08b, })
vim.api.nvim_set_hl(0, 'DiffviewDiffAddAsDelete',		{ bg = colors.base08b, })
vim.api.nvim_set_hl(0, 'DiffviewDiffDelete',			{ bg = colors.base01a, fg = colors.base08b, })
vim.api.nvim_set_hl(0, 'DiffviewEndOfBuffer',			{ bg = colors.base01a, })
vim.api.nvim_set_hl(0, 'DiffviewNormal',				{ bg = colors.base00, })
vim.api.nvim_set_hl(0, 'DiffviewCursorLine',			{ bg = colors.base02, fg = "NONE" })
vim.api.nvim_set_hl(0, 'DiffviewFolderName',			{ fg = colors.base06, bold = true })
vim.api.nvim_set_hl(0, 'DiffviewFolderSign',			{ fg = "NONE", })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelRootPath',		{ fg = colors.base06, bold = true })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelTitle',		{ fg = colors.base05, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelPath',			{ fg = colors.base05, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelFileName',		{ fg = colors.base04, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelInsertions',	{ fg = colors.base0Ba, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelDeletions',	{ fg = colors.base08a, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelCounter',		{ fg = colors.base0Da, })
vim.api.nvim_set_hl(0, 'DiffviewFilePanelConflicts',	{ fg = colors.base0Fa, })

-- vim.api.nvim_set_hl(0, 'DiffviewSignColumn',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewDim1',					{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewWinSeparator',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewNonText',				{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewPrimary',				{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewSecondary',				{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewReference',				{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusDeleted',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusUnmerged',		{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusUntracked',		{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusModified',		{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusRenamed',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusAdded',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusBroken',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusUnknown',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusTypeChange',		{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusCopied',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusLine',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusLineNC',			{ fg = "NONE", })
-- vim.api.nvim_set_hl(0, 'DiffviewStatusIgnored',			{ fg = "NONE", })


-- end
-- return M
