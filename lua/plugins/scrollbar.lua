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
			set_highlights = false,
			excluded_buftypes = {
				"terminal",
			},
			excluded_filetypes = {
				"blink-cmp-menu",
				"blink-cmp-documentation",
				-- "cmp_docs",
				-- "cmp_menu",
				"alpha",
				"diff",
				"lazy",
				"lspinfo",
				"mason",
				"minimap",
				"neo-tree",
				"noice",
				"prompt",
				"TelescopePrompt",
				"Trouble",
				"undotree",
				"snacks_picker_list",
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
