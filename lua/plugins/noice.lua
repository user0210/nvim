-- local M = {
--   "folke/noice.nvim",
-- 	dependencies = {
-- 		"MunifTanjim/nui.nvim",
-- 		"rcarriga/nvim-notify",
-- 	},
-- }
-- function M.config()

local colors = require("colorscheme").colors

-- notify-background...
vim.api.nvim_set_hl(0, "NotifyBackground", { bg = colors.base01a })

require("noice").setup({
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = true, -- add a border to hover docs and signature help
	},
	cmdline = {
		view = "cmdline",
	},
	views = {
		cmdline_popup = {
			border = {
				style = "none",
				padding = { 1, 3 },
			},
			filter_options = {},
			win_options = {
				winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
			},
		},
	},
	popupmenu = {
		enabled = true, -- enables the Noice popupmenu UI
		backend = "nui", -- backend to use to show regular cmdline completions
	},
	routes = {
		{ -- Hide Search Virtual Text
			filter = {
				event = "msg_show",
				kind = "search_count",
			},
			opts = { skip = true },
		},
		{ -- Hide written messages
			filter = {
				event = "msg_show",
				kind = "",
				find = "written",
			},
			opts = { skip = true },
		},
	},
	lsp = {
		-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
	},
})

-- end
-- return M
