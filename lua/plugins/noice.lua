return {
	{
		"folke/noice.nvim",
		event = "VeryLazy",
		opts = {
			presets = {
				bottom_search = true,         -- use a classic bottom cmdline for search
				command_palette = false,       -- position the cmdline and popupmenu together
				long_message_to_split = true, -- long messages will be sent to a split
				inc_rename = false,           -- enables an input dialog for inc-rename.nvim
				lsp_doc_border = false,       -- add a border to hover docs and signature help
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
			}
		}
	}
}
