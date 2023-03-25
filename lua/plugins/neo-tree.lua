return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			close_if_last_window = true, -- Close Neo-tree if it is the last window left in the tab
			window = {
				width = 28,
			},
			event_handlers = {
				{
					event = "neo_tree_window_before_open",
					handler = function()
						---@diagnostic disable: need-check-nil
						local colors = MiniBase16.config.palette
						-- local colors = require("colorscheme").colors

						vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = colors.nocdBG })
						vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = colors.nocdBG })
						vim.api.nvim_set_hl(0, "NeoTreeCursorLine", { bg = colors.cursBG })
					end
				},
				{
					event = "neo_tree_buffer_enter",
					handler = function()
						vim.api.nvim_set_hl(0, "Cursor", { blend = 100 })
					end
				},
				{
					event = "neo_tree_buffer_leave",
					handler = function()
						vim.api.nvim_set_hl(0, "Cursor", { blend = 0 })
					end
				}
			},
		},
	},
}
