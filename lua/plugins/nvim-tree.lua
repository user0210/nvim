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
		highlight_opened_files = "name",
		root_folder_modifier = ":t",
		indent_markers = {
			enable = true,
		},
		icons = {
			webdev_colors = false,
			git_placement = "after",
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
		width = 26,
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

-- auto on/off signcolumn
require('nvim-tree.view').View.winopts.signcolumn = 'auto'

-- autostart tree
vim.api.nvim_create_autocmd({ "VimEnter" }, {
	callback = function()
		-- NvimTree
		vim.cmd("command NvimTreeNoFocus :lua require('nvim-tree').toggle(false, true)")
		vim.cmd("call timer_start(200, { tid -> execute('NvimTreeNoFocus')})")
	end,
})

-- auto-close
vim.api.nvim_create_autocmd({ "QuitPre" }, {
	pattern = "*",
	callback = function()
		local exclude = {
			"help",
			"man",
			"DressingSelect",
			"tsplayground",
			"lazy",
			"lspinfo",
			"mason",
			"undotree",
			"diff",
		}
		if vim.tbl_contains(exclude, vim.bo.filetype) then
			return
		else
			vim.cmd("NvimTreeClose")
		end
	end,
})

-- colors
local colors = require("colorscheme").colors

vim.api.nvim_set_hl(0, 'NvimTreeNormal',			{ bg = "NONE", nocombine = true })
vim.api.nvim_set_hl(0, 'NvimTreeNormalNC',			{ bg = "NONE", fg = colors.base03, nocombine = true })
vim.api.nvim_set_hl(0, 'NvimTreeOpenedFile',		{ fg = colors.base07, bold = true })
vim.api.nvim_set_hl(0, 'NvimTreeIndentMarker',		{ fg = colors.base03 })
vim.api.nvim_set_hl(0, 'NvimTreeEndOfBuffer',		{ bg = "NONE" })
vim.api.nvim_set_hl(0, 'NvimTreeSpecialFile',		{ fg = "NONE", underline = true })


-- end
-- return M
