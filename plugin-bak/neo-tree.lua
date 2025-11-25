return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		opts = {
			add_blank_line_at_top = true,
			source_selector = {
				-- winbar = true,
				padding = { left = 0, right = 0 },
				-- separator = "│",
				-- separator = "▊",
				separator = "",
				-- separator_active = { left = "", right = "" },
				separator_active = nil,
				tabs_layout = "start",
				show_separator_on_edge = false,
			},
			close_if_last_window = true,
			window = {
				width = 27,
			},
			renderers = {
				directory = {
					{ "indent" },
					{ "icon" },
					{ "current_filter" },
					{
						"container",
						content = {
							{ "diagnostics", errors_only = true, zindex = 20, align = "right", hide_when_expanded = true },
							{ "name", zindex = 10 },
							{ "clipboard", zindex = 10 },
							{ "git_status", zindex = 20, align = "right", hide_when_expanded = true },
						},
					},
				},
				file = {
					{ "indent" },
					{ "icon" },
					{
						"container",
						content = {
							{
								"name",
								zindex = 10,
							},
							{ "diagnostics", zindex = 20, align = "right" },
						},
					},
				},
			},
			event_handlers = {
				{
					event = "neo_tree_buffer_enter",
					handler = function()
						vim.opt.sidescrolloff = 0
					end,
				},
				{
					event = "neo_tree_buffer_leave",
					handler = function()
						vim.opt.sidescrolloff = 8
					end,
				},
			},
		},
	},
}
