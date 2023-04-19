return {
	{
		"petertriho/nvim-scrollbar",
		dependencies = {
			"kevinhwang91/nvim-hlslens",
			config = function()
				require("scrollbar.handlers.search").setup({
					override_lens = function()
					end,
				})
			end,
		},
		opts = {
			show = true,
			show_in_active_only = false,
			set_highlights = false,
			folds = 1000,      -- handle folds, set to number to disable folds if no. of lines in buffer exceeds this
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
				"neo-tree",
				"prompt",
				"TelescopePrompt",
				"noice",
				"minimap",
				"undotree",
				"diff",
				"lazy",
				"mason",
				"lspinfo",
				"alpha",
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
				search = true,   -- Requires hlslens
			},
		},
	},
}
