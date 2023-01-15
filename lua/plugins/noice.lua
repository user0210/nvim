-- local M = {
--   "folke/noice.nvim",
-- 	dependencies = {
-- 		"MunifTanjim/nui.nvim",
-- 		"rcarriga/nvim-notify",
-- 	},
-- }
-- function M.config()


local colors = require("colorscheme").colors

-- cmd-line
vim.api.nvim_set_hl(0, "NoiceCmdline",			{ bg = colors.nocdBG, fg = colors.base05, blend = 0 })
vim.api.nvim_set_hl(0, "NoiceCmdlineIcon",		{ bg = colors.base02, fg = colors.base0Da, blend = 0 })
vim.api.nvim_set_hl(0, "NoiceCmdlineIconSearch",{ bg = colors.base02, fg = colors.base0Da, blend = 0 })
vim.api.nvim_set_hl(0, "NoiceCmdlinePrompt", 	{ bg = colors.nocdBG, fg = colors.base0Da , blend = 0 })

vim.api.nvim_set_hl(0, "NoiceMini", 			{ bg = colors.base02 })
vim.api.nvim_set_hl(0, "NoiceMiniSearch", 		{ bg = colors.base0Ab })
vim.api.nvim_set_hl(0, "NoiceMiniIncSearch", 	{ bg = colors.base0Ab })


require("noice").setup({
	-- you can enable a preset for easier configuration
	presets = {
		bottom_search = true, -- use a classic bottom cmdline for search
		command_palette = true, -- position the cmdline and popupmenu together
		long_message_to_split = true, -- long messages will be sent to a split
		inc_rename = false, -- enables an input dialog for inc-rename.nvim
		lsp_doc_border = false, -- add a border to hover docs and signature help
	},
	cmdline = {
		view = "cmdline",
		format = {
			cmdline = { pattern = "^:", icon = "  ", lang = "vim" },
			search_down = { kind = "search", pattern = "^/", icon = "   ", lang = "regex" },
			search_up = { kind = "search", pattern = "^%?", icon = "   ", lang = "regex" },
			filter = { pattern = "^:%s*!", icon = " $ ", lang = "bash" },
			lua = { pattern = "^:%s*lua%s+", icon = "  ", lang = "lua" },
			help = { pattern = "^:%s*he?l?p?%s+", icon = "  " },
			input = {}, -- Used by input()
		},
	},
	popupmenu = {
		backend = "cmp", -- backend to use to show regular cmdline completions
	},
	lsp = {
		override = {
			["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			["vim.lsp.util.stylize_markdown"] = true,
			["cmp.entry.get_documentation"] = true,
		},
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
		mini = {
			align = "message-left",
			reverse = true,
			timeout = 4000,
			position = {
				row = 2,
				col = -1,
				-- col = 0,
			},
			border = {
				style = "none",
			},
			zindex = 60,
			win_options = {
				winblend = 30,
				winhighlight = {
					Normal = "NoiceMini",
					IncSearch = "NoiceMiniIncSearch",
					Search = "NoiceMiniSearch",
				},
			},
		},
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
})


-- end
-- return M
