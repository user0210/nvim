return {
	-- disable notify
	{ "rcarriga/nvim-notify", enabled = false },
	{
		"folke/noice.nvim",
		opts = {
			-- you can enable a preset for easier configuration
			presets = {
				bottom_search = true,         -- use a classic bottom cmdline for search
				command_palette = true,       -- position the cmdline and popupmenu together
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
			},
			popupmenu = {
				backend = "cmp", -- backend to use to show regular cmdline completions
			},
			-- routes = {
			-- 	{
			-- 		filter = {
			-- 			event = "msg_show",
			-- 			kind = "lua_error",
			-- 		},
			-- 		opts = { skip = true },
			-- 	},
			-- },
			-- lsp = {
			-- 	override = {
			-- 		["vim.lsp.util.convert_input_to_markdown_lines"] = true,
			-- 		["vim.lsp.util.stylize_markdown"] = true,
			-- 		["cmp.entry.get_documentation"] = true,
			-- 	},
			-- },
		},
	},
}
