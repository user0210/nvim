-- local M = {
--   "nvim-tree/nvim-tree.lua",
-- 	dependencies = {
-- 		"nvim-tree/nvim-web-devicons",
-- 	},
-- }
-- function M.config()

local nvim_tree = require ("nvim-tree")
local nvim_tree_config = require ("nvim-tree.config")
local tree_cb = nvim_tree_config.nvim_tree_callback

nvim_tree.setup({
	hijack_directories = {
		enable = true,
	},
	disable_netrw = true,
	hijack_netrw = true,
	open_on_setup = false,
	open_on_setup_file = false,
	ignore_ft_on_setup = {},
	update_cwd = true,
	renderer = {
		add_trailing = false,
		group_empty = false,
		highlight_git = false,
		highlight_opened_files = "none",
		root_folder_modifier = ":t",
		icons = {
			webdev_colors = true,
			git_placement = "before",
			padding = " ",
			symlink_arrow = " ➛ ",
			show = {
				file = true,
				folder = true,
				folder_arrow = true,
				git = true,
			},
			glyphs = {
				default = "",
				symlink = "",
				folder = {
					arrow_open = "",
					arrow_closed = "",
					default = "",
					open = "",
					empty = "",
					empty_open = "",
					symlink = "",
					symlink_open = "",
				},
				git = {
					unstaged = "",
					staged = "S",
					unmerged = "",
					renamed = "➜",
					untracked = "U",
					deleted = "",
					ignored = "◌",
				},
			},
		},
	},
	diagnostics = {
		enable = true,
		icons = {
			hint = "",
			info = "",
			warning = "",
			error = "",
		},
	},
	update_focused_file = {
		enable = true,
		update_cwd = true,
		ignore_list = {},
	},
	git = {
		enable = true,
		ignore = true,
		timeout = 500,
	},
	view = {
		width = 30,
		hide_root_folder = false,
		side = "left",
		mappings = {
			custom_only = false,
			list = {
				{ key = { "l", "<CR>", "o" }, cb = tree_cb("edit") },
				{ key = "h", cb = tree_cb("close_node") },
				{ key = "v", cb = tree_cb("vsplit") },
			},
		},
	},
	tab = {
		sync = {
			open = false,
			close = true,
			ignore = {},
		},
	},
})
require('nvim-tree.view').View.winopts.signcolumn = 'auto'

local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'NvimTreeFolderIcon',		{ fg = colors.base0D })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker',		{ fg = colors.base06 })
vim.api.nvim_set_hl(0, 'NvimTreeImageFile',			{ fg = colors.base05 })
vim.api.nvim_set_hl(0, 'NvimTreeSpecialFile',		{ fg = colors.base09 })
vim.api.nvim_set_hl(0, 'NvimTreeGitignoreIcon',     { fg = colors.base08a })
vim.api.nvim_set_hl(0, 'NvimTreeGitStaged',			{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitNew',			{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitRenamed',		{ fg = colors.base0C })
vim.api.nvim_set_hl(0, 'NvimTreeGitDeleted',		{ fg = colors.base08 })
vim.api.nvim_set_hl(0, 'NvimTreeGitMerge',			{ fg = colors.base0A })
vim.api.nvim_set_hl(0, 'NvimTreeGitDirty',			{ fg = colors.base0A })
vim.api.nvim_set_hl(0, 'NvimTreeSymlink',			{ fg = colors.base0B })
vim.api.nvim_set_hl(0, 'NvimTreeExecFile',			{ fg = colors.base0E })
vim.api.nvim_set_hl(0, 'NvimTreeCursorLine',		{ fg = colors.base06, bg = colors.base0Da })
vim.api.nvim_set_hl(0, 'NvimTreeNormal',			{ fg = colors.base05, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeFolderName',		{ fg = colors.base0D, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFolderName',	{ fg = colors.base0D, bg = "NONE", bold = true, italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeRootFolder',		{ fg = colors.base05, bg = "NONE", bold = true })
vim.api.nvim_set_hl(0, 'NvimTreeEmptyFolderName',	{ fg = colors.base04, bg = "NONE", italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeGitIgnored',		{ fg = colors.base04, bg = "NONE", italic = true })
vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer',		{ fg = colors.base00, bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeVertSplit',			{ fg = "NONE",	bg = "NONE" })

-- end
-- return M
